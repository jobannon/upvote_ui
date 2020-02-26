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
  erb :'cohorts/ideas/new'
end

get '/cohorts/ideas' do
  erb :'cohorts/ideas'
end

get '/cohorts/ideas/:id' do
  erb :'cohorts/ideas/show'
end

get '/auth/github/callback' do
  redirect 'http://localhost:3000/auth/github/callback'
end
