class Api::BookingsController < ApplicationController
  before_action :authenticate_api_user!

  def index
    @bookings = current_api_user.bookings.includes([:vehicle]).order(id: :desc)
    render json: {
      status: '00',
      bookings: @bookings
    }, status: :ok
  end

  # def booking_success
  #   render json: {
  #     status: '00',
  #     message: 'Vehicle Booked Successfully'
  #   }
  # end

  # def show
  #   @booking = Booking.find(params[:id])
  #   render json: @booking
  # end

  def create
    booking = current_api_user.bookings.new(booking_params)

    if booking.save!
      render json: {
        status: '00',
        message: 'Booking saved successfully!',
      }, status: :ok
    else
      render json: {
        status: '04',
        message: 'Booked creation failed',
        error: booking.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def update
    booking = Booking.find(params[:id])
    if booking.update(booking_params)
      render json: {
        status: '00',
        message: 'Booking updated successfully!',
      }, status: :ok
    else
      render json: {
        status: '04',
        message: 'Unable to update your booking',
      }, status: :unprocessable_entity
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    if booking.destroy!
      render json: {
        status: '00',
        message: 'Booking canceled successfully!',
      }, status: :ok
    else
      render json: {
        status: '04',
        message: 'Unable to cancel booking',
      }, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle_id, :pickup_date, :return_date)
  end
end
