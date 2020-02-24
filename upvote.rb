require 'sinatra'
require 'faraday'
require 'dotenv'

configure do
  set :public_folder, 'public'
  set :views, 'views'
end

get '/' do
  erb :welcome
end

get '/ideas/new' do
  erb :new
end

# get '/ideas/create' do
#   conn = Faraday.new(url: ENV['SERVER']) do |f| # replace 1909 with #{cohort_number} & current_user
#     f.adapter Faraday.default_adapter
#   end
#   # post params to upvote API
#   send_params = request.env['rack.request.query_hash']
#
#   post = conn.post('cohorts/1909/ideas') do |req|
#     req.headers['Content-Type'] = 'application/json'
#     req.params = send_params
#   end
#   # redirect to '/cohorts/:cohort_number/ideas'
#   erb :welcome
# end
