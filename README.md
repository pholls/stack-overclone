# README

## Ruby version
`ruby 3.0.2`

## Rails version
`Rails 7.0.4`

## Postgres version
`postgres (PostgreSQL) 14.6 (Homebrew)`

## Starting this
- clone the repo
- `bundle install`
- `bundle exec rails server`
- navigate to `http://127.0.0.1:3000/`

## Future development
- Markdown WYSIWYG editor (with previews)
- editing answers
- split up answers better
  - show author, time, etc
- view diffs of edited answers/questions
- voting on questions and answers (`acts_as_votable` gem)
- delete user account
- delete questions
- notifications (twilio) when answers accepted, or questions answered
- more styling (bootstrap)
- search
- hot network questions
- jQuery / AJAX
- pagination
- email verification
- tests tests tests!