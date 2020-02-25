require 'spec_helper'

RSpec.describe 'Cohorts ideas' do
    it 'displays all ideas assosiated with a cohort', js: true, type: :feature do
      visit '/cohorts/ideas'

      sleep(2)
      expect(page).to have_content("Great Idea1")
      expect(page).to have_content("save the world")
      have_button 'Vote'
      within ''
    end
end
