Oulipostodon
============

This is a project to rewrite the UI elements of a Mastodon instance
with the constraint that the letter "E" not be used. Obviously, this
file is not compliant.

The original this is based on is Mouse Reeve's oulipo.social:
https://github.com/mouse-reeve/mastodon/

I (RJL20) am not particularly proficient in git operations. It's
possible there was a way to fork from her repository and merge in all
the changes from the tootsuite repository that had happened, but I
wasn't seeing a good way. It looked like all the translation we being
done in files which are auto-generated, at least in the version of
Mastodon I started with, and I didn't see a good way of moving them
back into what looks like their origin files in the current code.

So, a new fork, to which I've applied some of the changes made in the
other, where I could find their equivalents.

These are the files which I believe need editing for further rewriting:

- config/locales/activerecord.en-OU.yml
- config/locales/en-OU.yml
- config/locales/doorkeeper.en-OU.yml
- config/locales/devise.en-OU.yml
- config/locales/simple_form.en-OU.yml
- app/javascript/mastodon/locales/en-OU.json

There may be others required, but those are the ones I've made so far,
anyway.

