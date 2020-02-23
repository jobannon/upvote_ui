require 'spec_helper'

RSpec.describe 'Upvote landing page' do
  it 'displays idea cards' do
    response = get '/'

    expect(response).to be_successful
    expect(response.body).to include('Welcome to the Sinatra Template!')
  end
end
