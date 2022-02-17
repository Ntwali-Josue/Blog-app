require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET users#index' do
    before(:example) { get 'users/index/posts' }
    it 'renders the correct template' do
      expect(response).to render_template(:index)
    end
    it 'responds the correct status' do
      expect(response).to have_http_status(:ok)
    end
    it 'includes the right placeholder text' do
      expect(response.body).to include('This is the user.')
    end
  end

  describe 'GET user#show' do
    before(:example) { get '/users/show' }
    it 'renders the correct template' do
      expect(response).to render_template(:show)
    end
    it 'responds the correct status' do
      expect(response).to have_http_status(:ok)
    end
    it 'includes the right placeholder text' do
      expect(response.body).to include('Showing the user.')
    end
  end
end
