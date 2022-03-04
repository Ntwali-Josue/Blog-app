require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'josh', bio: 'josh bio', email: 'josh@josh', password: '123456',
             password_confirmation: '123456', confirmed_at: '2022-03-02 22:25:13.71382')
  end
  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with Posts Counter negative' do
    subject.PostsCounter = -5
    expect(subject).to_not be_valid
  end

  it 'is not valid with posts_counter not integer' do
    subject.PostsCounter = 7.7
    expect(subject).to_not be_valid
  end
end
