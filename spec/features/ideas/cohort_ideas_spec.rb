require 'spec_helper'

RSpec.describe 'Cohorts ideas' do
  it 'displays all ideas assosiated with a cohort', js: true, type: :feature do
    visit '/cohorts/1909/ideas'
    sleep(1)
    expect(page).to have_content("save the world")
    expect(page).to have_content("Great Idea1")
    expect(page).to have_content("Great Idea2")
  end
end
