require 'swagger_helper'

RSpec.describe 'api/bookings', type: :request do
  path '/api/users/{user_id}/bookings' do
    get 'Get user car reservations' do
      tags 'Vehicle Reservations'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'

      response '401', 'You must Login or Register. Car Reservation not found' do
        let(:user_id) { 'invalid' }
        run_test!
      end
    end
  end

  path '/api/users/{user_id}/bookings' do
    post 'Book A Car' do
      tags 'Create Car Reservation'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'
      parameter name: :booking, in: :body, schema: {
        type: :object,
        properties: {
          pickup_date: { type: :date },
          return_date: { type: :date },
          car_id: { type: :integer }
        },
        required: %w[pickup_date return_date car_id]
      }

      response '401', 'You need to Sign in before continuing' do
        let(:user_id) { 'invalid' }
        let(:booking) { { booking: { pickup_date: @pickup_date, return_date: @return_date } } }
        run_test!
      end
    end
  end

  path '/api/users/{user_id}/bookings/{id}' do
    delete 'Delete a booking' do
      tags 'Remove a booking'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :integer, description: 'Current User ID'
      parameter name: :id, in: :path, type: :integer, description: 'Reservation ID'

      response '401', 'You need to Sign in before continuing' do
        let(:user_id) { 'invalid' }
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
