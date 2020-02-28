require 'spec_helper'

RSpec.describe 'as a logged in user', :js do
  xit 'user can log out' do
    visit '/'

    click_on "Login with GitHub"

    sleep(2)
    click_on "Logout"

    expect(current_path).to eq("/")
    expect(page).to have_content("UpVote - A Turing Terrificus Ideation Solution")
  end
end
