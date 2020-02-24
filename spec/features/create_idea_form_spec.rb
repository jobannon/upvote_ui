require 'spec_helper'

RSpec.describe 'Create idea page' do
  it 'displays a form into which idea details can be entered' do
    visit '/'

    click_on 'Add an Idea'

    expect(current_path).to eq('/ideas/new')
    expect(page).to have_content('Create a Terrificus Idea')
  end

  it 'a submitted idea is added to the landing page' do
    visit '/ideas/new'

    fill_in :title, with: 'harmony'
    fill_in :pitch, with: 'making the world better'
    fill_in :problem, with: 'inequity'
    fill_in :solution, with: 'equity'
    fill_in :audience, with: 'humanity'
    fill_in :features, with: 'free music'
    fill_in :apis, with: 'soundcloud'
    fill_in :oauth, with: 'OAuth'

    click_on 'Submit Idea'

    expect(current_path).to eq('/')
    expect(page).to have_content('harmony')
  end
end
