require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    User.create(id: 1, name: 'josh', bio: 'josh bio', email: 'josh@josh', password: '123456',
                password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
  end

  before :each do
    Post.create(id: 1, title: 'Post title', text: 'Lorem ipsum', user_id: 1)
  end
  subject do
    Comment.new(user_id: 1, post_id: 1, text: 'this is the text')
  end
  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a text' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'checks that "user_id" is an integer' do
    subject.user_id = 7.5
    expect(subject).to_not be_valid
  end

  it 'checks that "post_id" is an integer' do
    subject.post_id = 7.5
    expect(subject).to_not be_valid
  end
end
