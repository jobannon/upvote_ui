require 'spec_helper'

RSpec.describe 'A User' do
  xit 'can authenticate or login with GitHub OAuth' do
    VCR.use_cassette('connect_to_github') do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new('provider' => 'github',
                                                                  'uid' => '29346170',
                                                                  'info' =>
        { 'nickname' => 'hale4029',
          'email' => 'harrison483@gmail.com',
          'name' => 'Harrison',
          'image' => 'https://avatars2.githubusercontent.com/u/29346170?v=4',
          'urls' => { 'GitHub' => 'https://github.com/hale4029', 'Blog' => '' } },
          'credentials' => { 'token' => (ENV['GITHUB_ACCESS_TOKEN']).to_s, 'expires' => false })

      visit '/'

      expect(page).to have_content('Login with GitHub')
      click_link('Login with GitHub')

      user = User.last

      expect(current_path).to eq('/cohorts/1909/ideas')
      expect(user.handle).to eq('hale4029')
    end
  end
end
