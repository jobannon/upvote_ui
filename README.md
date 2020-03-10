# UpVote
![6D9CCA08-9791-48E2-B487-4BAA0358D2AB](https://user-images.githubusercontent.com/16090626/75720162-3a858c00-5c93-11ea-8920-fd6b938275ff.jpeg)
Click to open the [UpVote app](https://upvote-ideas-ui.herokuapp.com/) hosted on Heroku
Click [here](https://github.com/jobannon/upvote_api) to open the related Back-End API supporting this Front-End 

[![Build Status](https://travis-ci.com/jobannon/upvote_ui.svg?branch=master)](https://travis-ci.com/jobannon/upvote_ui)

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
* [Purpose](#purpose)
  * [Built With](#built-with)
* [Installation](#installation)
  * [Requirements](#reqirements)
  * [Versions](#Versions)
* [Database](#database)
  * [Programatic Flow](#programatic-flow)
* [Testing](#testing)
  * [Testing Technologies](#testing-technologies)
* [Roadmap](#roadmap)
* [Running Tests](#running-tests)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

## About the project
UpVote is an interactive Rails web application built from conception to completion that authenticates with a third-party service (GitHub), consumes the Upsplash API, and provides a solution to an identified problem.

## Purpose
Object Oriented Programing principles, Restful Routing, Test Driven Development, Behavior Driven Development, Authenticated API calls, OAuth process

## Welcome Page Demo

![upvote2](https://user-images.githubusercontent.com/16090626/76369084-f419d800-62f7-11ea-8b69-71d0da146050.gif)

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

### Versions
- Ruby 2.6.3
- Rails 6.0.2

### Related Repositories
- [upvote_api](https://github.com/jobannon/upvote_api)

## Database 
![image](https://user-images.githubusercontent.com/16090626/75499161-6e586d00-5986-11ea-83f0-c552c29d81a7.png)

## Architecture
![image](https://user-images.githubusercontent.com/29346170/75731022-71d15880-5ce6-11ea-9389-9cd546f86ca2.png)

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

## Roadmap
* [projectboard](https://github.com/jobannon/upvote_ui/projects/1)

## Contact
* [jobannon](https://github.com/jobannon)
* [freeheeling](https://github.com/freeheeling)
* [hale4029](https://github.com/hale4029)
## Acknowledgements
* [Brian Zanti](https://github.com/BrianZanti)
