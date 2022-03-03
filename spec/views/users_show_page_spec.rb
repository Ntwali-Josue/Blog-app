require 'rails_helper'

describe 'Users show Page', type: :feature do
  context 'when successfull' do
    before :each do
      @user = User.new(name: 'josh', bio: 'josh bio', email: 'josh@josh', password: '123456',
                       password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      @user.save
      @post1 = Post.new(title: 'title', text: 'text', user_id: @user.id)
      @post2 = Post.new(title: 'title', text: 'text', user_id: @user.id)
      @post3 = Post.new(title: 'title', text: 'text', user_id: @user.id)
      @post1.save
      @post2.save
      @post3.save

      visit '/users/sign_in'
      within('form') do
        fill_in 'user[email]', with: 'josh@josh'
        fill_in 'password', with: '123456'
      end
      click_button 'Log in'
    end

    it 'can see the user\'s profile picture.' do
      visit "/users/#{@user.id}"
      expect(page).to have_css('img')
    end

    it 'can see the user\'s bio.' do
      visit "/users/#{@user.id}"
      expect(page).to have_content(@user.bio)
    end

    it 'can see the user\'s username.' do
      visit "/users/#{@user.id}"
      expect(page).to have_content(@user.name)
    end

    it 'can see number of posts the user has written.' do
      visit "/users/#{@user.id}"
      expect(@user.posts.count).to eq(3)
    end

    it 'I can see the the user\'s first 3 posts.' do
      visit "/users/#{@user.id}"
      expect(@user.most_recent_posts.count).to eq(3)
    end

    it 'can see a button that lets me view all of a user\'s posts.' do
      visit "/users/#{@user.id}"
      expect(page).to have_link('See all posts')
    end

    it 'redirects to the user\'s posts page when I click the button.' do
      visit "/users/#{@user.id}"
      click_link("Post ##{@post1.id}")
      expect(current_path).to eq("/users/#{@user.id}/posts/#{@post1.id}")
    end

    it 'redirects to the user\'s posts page when I click the button.' do
      visit "/users/#{@user.id}"
      click_link('See all posts')
      expect(current_path).to eq("/users/#{@user.id}/posts")
    end
  end
end
