require 'sinatra_helper.rb'

RSpec.describe "As visitor I can visit the welcome page" ,type: :feature do 
  it 'can show cards' do 
    # visit '/'
    browser = Rack::Test::Session.new(Rack::MockSession.new(Sinatra::Application))
    browser.get '/'
    save_and_open_page

    expect(current_path).to eq("/")
    expect(page).to have_content("Login")
  end
end

