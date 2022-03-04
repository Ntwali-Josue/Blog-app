# rubocop:disable Metrics/BlockLength
require 'rails_helper'

describe 'Sign In', type: :feature do
  context 'when successfull' do
    before :each do
      user = User.new(name: 'josh', bio: 'josh bio', email: 'rafa@rafa', password: '123456',
                      password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      user.save
      visit 'users/sign_in'
    end

    it 'should see the username and password inputs and the "Log in" button.' do
      expect(page).to have_field('user[email]')
      expect(page).to have_field('password')
      expect(page).to have_button('Log in')
      expect(page).to have_content('Sign in')
    end

    it 'should get a detailed error, when fields are empty' do
      within('form') do
        fill_in 'user[email]', with: ''
        fill_in 'password', with: ''
      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password.'
    end

    it 'should get a detailed error, when submitting incorrect data.' do
      within('form') do
        fill_in 'user[email]', with: 'incorrect@incorrect'
        fill_in 'password', with: 'incorrect'
      end
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password.'
    end

    it 'should redirect to the root page, when submitting correct data.' do
      within('form') do
        fill_in 'user[email]', with: 'rafa@rafa'
        fill_in 'password', with: '123456'
      end
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully.'
      expect(page).to have_content 'Welcome to your Blog App'
      expect(current_path).to eq root_path
    end
  end
end
# rubocop:enable Metrics/BlockLength
