2018.03.20:

Added 6 keys
+--------+-------------------------------+-----------------------------+
| Locale | Key                           | Value                       |
+--------+-------------------------------+-----------------------------+
| en-OU  | statuses.attached.description | Attached: %{attached}       |
| en-OU  | statuses.attached.image.one   | %{count} image              |
| en-OU  | statuses.attached.image.other | %{count} images             |
| en-OU  | statuses.attached.video.one   | %{count} video              |
| en-OU  | statuses.attached.video.other | %{count} videos             |
| en-OU  | statuses.content_warning      | Content warning: %{warning} |
+--------+-------------------------------+-----------------------------+

$ node ./config/webpack/translationRunner.js en-OU
Maintaining en-OU.json:

Deleted keys:
  compose_form.sensitive: Mark photo as tricky
  compose_form.spoiler: Show warning
  tabs_bar.compose: Draft

Added keys:
  compose_form.sensitive.marked: Media is marked as sensitive
  compose_form.sensitive.unmarked: Media is not marked as sensitive
  compose_form.spoiler.marked: Text is hidden behind warning
  compose_form.spoiler.unmarked: Text is not hidden
  search_popout.tips.full_text: Simple text returns statuses you have written, favourited, boosted, or have been mentioned in, as well as matching usernames, display names, and hashtags.
  status.show_less_all: Show less for all
  status.show_more_all: Show more for all

Done in 0.71s.


