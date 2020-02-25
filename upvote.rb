require 'sinatra'

configure do
  set :public_folder, 'public'
  set :views, 'views'
end

get '/' do
  erb :welcome
end

get '/cohorts/ideas' do
  erb :'cohorts/ideas'
end
