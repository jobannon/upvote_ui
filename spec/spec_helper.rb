require 'capybara/rspec'
require 'capybara/dsl'
require 'rack/test'
require 'pry'
require 'rspec'
require 'shoulda/matchers'
require 'vcr'
require 'webmock/rspec'
require 'selenium-webdriver'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../upvote.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# Define the application we're testing
def app
  # Load the application defined in config.ru
  Rack::Builder.parse_file('config.ru').first
end

# Configure Capybara to test against the application above.
Capybara.app = app

RSpec.configure do |config|
  set :environment, :test
  config.include Capybara::DSL
  config.include Capybara
  config.include RSpecMixin
  config.order = 'default'
  config.before(:each, type: :system) do
    driven_by :selenium, using: :chrome, options: { args: ["headless", "disable-gpu", "no-sandbox", "disable-dev-shm-usage"] }
  end
end

VCR.configure do |config|
  config.ignore_localhost = true
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.filter_sensitive_data('<GITHUB_ACCESS_TOKEN>') { ENV['GITHUB_ACCESS_TOKEN'] }
end

Capybara.register_driver :chrome do |app|
	options = Selenium::WebDriver::Chrome::Options.new(args: %w[no-sandbox headless disable-gpu])

	Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.default_max_wait_time = 5
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
  end
end

VCR.configure do |config|
  config.ignore_localhost = true
  config.cassette_library_dir = 'spec/cassettes'
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.filter_sensitive_data('<GITHUB_ACCESS_TOKEN>') { ENV['GITHUB_ACCESS_TOKEN'] }
end
