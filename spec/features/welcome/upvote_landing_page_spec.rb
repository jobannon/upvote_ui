require 'spec_helper'

RSpec.describe 'Upvote landing page' do
  it 'displays idea cards' do
    visit '/'

    expect(page).to have_content('Login')
  end
end
