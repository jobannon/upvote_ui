# require 'bundler/setup'
# require 'sinatra'
# require 'capybara'
# require 'capybara/dsl'
# require 'capybara/rspec'
# require 'rspec'
# # require 'rack/test'
# require File.expand_path '../../app/controllers/application_controller.rb', __FILE__

# # ENV['RACK_ENV'] = 'test'

# # module RSpecMixin
# #   include Rack::Test::Methods
# #   def app() Sinatra::Application end
# # end

# RSpec.configure do |config|
#   config.include Capybara::DSL
#   config.include Capybara
#   # config.include RSpecMixin
# end

# # def app() Sinatra::Application end

# # Capybara.app = Sinatra::Application

# # def app
# #   Sinatra::Application
# # end

# # include "./../app/controllers/application_controller.rb"
# Sinatra::Application.environment = :test


# spec_helper.rb
require 'rack/test'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'pry'
require 'vcr'
require 'webmock/rspec'
require 'shoulda/matchers'
ENV['RACK_ENV'] = 'test'
require File.expand_path '../../app/controllers/application_controller.rb', __FILE__
# module RSpecMixin
#   include Rack::Test::Methods
#   def app() Sinatra::Application end
# end
  def app() Sinatra::Application end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara
  # config.include RSpecMixin
end
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec    # Keep as many of these lines as are necessary:
  end
end
