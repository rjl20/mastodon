#!/bin/bash
SPAMMX=mxsrv.mailasrvs.pw
BADFILE=/tmp/domains-bad.dat
GOODFILE=/tmp/domains-good.dat
RAILS_ENV=production bundle exec rails r 'puts User.confirmed.joins(:account).where(accounts: { suspended: false }).map(&:email).join("\n")' | grep @ | while read email; do
    domain=`echo $email | cut -f 2 -d '@'`
    if grep -q "$domain" $BADFILE; then
	echo; echo "$email"
    elif grep -q "$domain" $GOODFILE; then
	echo -n "."
    else
	isbad="false"
	dig "$domain" mx | grep -q $SPAMMX && (echo $domain >> $BADFILE; isbad="true")
	if [ "true" == $isbad ]; then
	    echo; echo $email
	else
	    echo $domain >> $GOODFILE
	    echo -n "."
	fi
    fi
done
echo
