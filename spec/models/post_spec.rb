require 'rails_helper'

RSpec.describe Post, type: :model do
  before :each do
    User.create(id: 1, name: 'hamza', PostsCounter: 0)
  end

  subject do
    Post.new(title: 'Anything', text: 'text', postsCounter: 2, LikesCounter: 1, user_id: 1)
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a text' do
    subject.text = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with likes_counter negative' do
    subject.LikesCounter = -5
    expect(subject).to_not be_valid
  end

  it 'is not valid with likes_counter not integer' do
    subject.LikesCounter = 7.7
    expect(subject).to_not be_valid
  end

  it 'is not valid with comments_counter negative' do
    subject.postsCounter = -5
    expect(subject).to_not be_valid
  end

  it 'is not valid with comments_counter not integer' do
    subject.postsCounter = 7.7
    expect(subject).to_not be_valid
  end
end
