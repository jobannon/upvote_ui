require 'sinatra'
require 'faraday'
require 'dotenv'
require 'omniauth-github'

configure do
  set :public_folder, 'public'
  set :views, 'views'
  enable :sessions

  use OmniAuth::Builder do
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  end
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

get '/auth/github/callback' do
  redirect 'https://upvote-ideas.herokuapp.com/auth/github/callback'
end
