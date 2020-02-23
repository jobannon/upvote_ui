require 'sinatra'
require 'pry'

configure do
  set :public_folder, 'public'
  set :views, 'views'
end

get '/' do
  erb :welcome
end

get '/cohorts/:cohort_number/ideas' do
  erb :'cohorts/ideas/ideas'
end
