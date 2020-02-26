require './upvote'
require 'dotenv/load'

run Sinatra::Application

set :environment, :development
