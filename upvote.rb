require 'sinatra'
require 'faraday'
require 'dotenv'

configure do
  set :public_folder, 'public'
  set :views, 'views'
  enable :sessions
end

get '/' do
  erb :welcome
end

get '/ideas/new' do
  erb :new
end

get '/cohorts/ideas' do
  erb :'cohorts/ideas'
end

get '/cohorts/ideas/id' do 
  erb :'cohorts/id'
end

get '/auth/github/callback' do
  redirect 'https://upvote-ideas.herokuapp.com/auth/github/callback'
end
