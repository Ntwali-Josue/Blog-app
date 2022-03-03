require 'rails_helper'

describe 'Posts show Page', type: :feature do
  context 'when successfull' do
    before :each do
      @user = User.new(name: 'josh', bio: 'josh bio', email: 'josh@josh', password: '123456',
                       password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
      @user.save
      @post1 = Post.new(title: 'Post 1', text: 'text 1', user_id: @user.id)
      @post2 = Post.new(title: 'Post 2', text: 'text 2', user_id: @user.id)
      @post3 = Post.new(title: 'Post 3', text: 'text 3', user_id: @user.id)
      @post1.save
      @post2.save
      @post3.save

      @comment1 = Comment.new(text: 'comment text', user_id: @user.id, post_id: @post1.id)
      @comment2 = Comment.new(text: 'comment text', user_id: @user.id, post_id: @post2.id)
      @comment3 = Comment.new(text: 'comment text', user_id: @user.id, post_id: @post3.id)
      @comment1.save
      @comment2.save
      @comment3.save

      visit '/users/sign_in'
      within('form') do
        fill_in 'user[email]', with: 'josh@josh'
        fill_in 'password', with: '123456'
      end
      click_button 'Log in'
      visit "/users/#{@user.id}/posts/#{@post1.id}"
    end

    it 'can see the post title' do
      expect(page).to have_content("Post 1")
    end

    it 'can see who wrote the post.' do
      expect(page).to have_content("josh")
    end

    it 'can count the post\s comments.' do
      expect(page).to have_content("Comments: 1")
    end

    it 'can count the post\s likes.' do
      expect(page).to have_content("Likes: #{@post1.LikesCounter}")
    end
    
    it 'can see the some of the post\'s body.' do
      visit "/users/#{@user.id}/posts"
      expect(page).to have_content("text 1")
    end

    it 'can see a section for pagination' do
      expect(page).to have_content("#{@user.name}")
    end

    it 'redirects to the user\'s show posts page when I click the button.' do
      expect(page).to have_content("josh comment text")
    end
  end
end
