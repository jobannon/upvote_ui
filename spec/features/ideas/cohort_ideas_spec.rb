require 'spec_helper'

RSpec.describe 'Cohorts ideas' do
  xit 'displays all ideas assosiated with a cohort', :js, :vcr, :feature do
    visit '/cohorts//ideas'
    sleep(5)
    expect(page).to have_content("save the world")
    expect(page).to have_content("Great Idea1")
    expect(page).to have_content("Great Idea2")
  end
end
