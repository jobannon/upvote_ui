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

get '/cohorts/:cohort_number/ideas' do
  erb :'cohorts/ideas/ideas'
end
