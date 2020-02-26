require 'spec_helper'

RSpec.describe 'Upvote landing page' do
  xit 'displays idea cards' do
    visit '/'

    expect(page).to have_content('Add an Idea')
  end
end
