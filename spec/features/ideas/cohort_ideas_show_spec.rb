require 'spec_helper'

RSpec.describe 'Cohorts ideas' do
  it 'displays all ideas assosiated with a cohort' do
    visit '/cohorts/1909/ideas'

    expect(page).to have_content("Great Idea1")
    expect(page).to have_content("Great Idea2")
  end
end
