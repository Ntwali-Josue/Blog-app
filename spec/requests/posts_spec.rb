require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /posts' do
    describe 'GET posts#index' do
      before(:example) { get '/users/2/posts' }
      it 'renders the correct template' do
        expect(response).to render_template(:index)
      end
      it 'responds the correct status' do
        expect(response).to have_http_status(:ok)
      end
      it 'includes the right placeholder text' do
        expect(response.body).to include('This is the post.')
      end
    end

    describe 'GET posts#show' do
      before(:example) { get '/users/2/posts/show' }
      it 'renders the correct template' do
        expect(response).to render_template(:show)
      end
      it 'responds the correct status' do
        expect(response).to have_http_status(:ok)
      end
      it 'includes the right placeholder text' do
        expect(response.body).to include('Showing the post.')
      end
    end
  end
end
