require 'capybara'
require 'capybara/dsl'
require 'rack/test'
require 'pry'
require 'rspec'
require 'shoulda/matchers'
require 'vcr'
require 'webmock/rspec'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../upvote.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara
  config.include RSpecMixin
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
  end
end
