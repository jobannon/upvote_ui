# UpVote

Click to open the [UpVote app](https://upvote-ideas-ui.herokuapp.com/) hosted on Heroku

## Description
UpVote is an interactive Rails web application built from conception to completion that authenticates with a third-party service (GitHub), consumes the Upsplash API, and provides a solution to an identified problem.

UpVote is intended to...

## Purpose
Object Oriented Programing principles, Restful Routing, Test Driven Development, Behavior Driven Development, Authenticated API calls, OAuth process

## Welcome Page Demo

![UpVote Demo](.gif placeholder)

## Installation
1. Clone down this and the micro-service repo into a directory of your choice
```
  $ git clone https://github.com/jobannon/upvote_ui
  $ git clone https://github.com/jobannon/upvote_api
```
2. Change into the following directory
```
  $ cd upvote_ui
```
3. Install the gem packages
```
  $ bundle install
```
4. Change into the other directory
```
  $ cd upvote_api
```
5. Install the gem packages
```
  $ bundle install
```
6. Set up the database
```
  $ rake db:{create,migrate,seed}
```
7. Launch your local server
```
  $ rails s
```
8. In a separate terminal tab, run the upvote_ui
```
  $ cd upvote_ui
  $ puma
```
9. Finally, visit `http://localhost:9292` in your web browser

## Requirements
Environment variables and required API keys/tokens:
* GitHub client_id defined as `ENV['GITHUB_KEY']`
* GitHub client_secret defined as `ENV['GITHUB_SECRET']`

## Database / Schema Diagram

<.png placeholder>

## Testing

### Testing Technologies
* [rspec](https://github.com/rspec/rspec)
* [factory_bot_rails](https://github.com/rubocop-hq/rubocop)
* [faker](https://github.com/faker-ruby/faker)
* [pry](https://github.com/pry/pry)
* [capybara](https://github.com/teamcapybara/capybara)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [simplecov](https://github.com/colszowka/simplecov)
* [webmock](https://github.com/bblimke/webmock)

### Running Tests
Run the full test suite:
```
$ bundle exec rspec
```

Run a single test file:
```
$ bundle exec rspec <path-to-file>
```

## Versions
- Ruby 2.6.3
- Rails 6.0.2
