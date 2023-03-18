require 'swagger_helper'

RSpec.describe 'api/users/sessions', type: :request do
  describe 'api/login' do
    let(:user) { User.new(name: 'Harmony', email: 'harmony@gmail.com', password: 'password@1') }

    before { user.save }

    context 'GET /api/login' do
      it 'returns a 204 response with no body' do
        get '/api/login'
        expect(response).to have_http_status(:no_content)
        expect(response.body).to be_blank
      end
    end

    context 'DELETE /api/logout' do
      it 'returns a 204 response with no body' do
        # log in the user first
        post '/api/login', params: { email: user.email, password: user.password }

        # send a GET request to log out the user
        delete '/api/logout'

        # expect a 200 response with a success message
        expect(response).to have_http_status(:ok)
        expect(response.body).to include('You are logged out.')
        expect(JSON.parse(response.body)['status']).to eq('00')
        expect(JSON.parse(response.body)['message']).to eq('You are logged out.')
      end
    end
  end
end
