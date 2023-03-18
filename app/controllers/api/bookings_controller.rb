class Api::BookingsController < ApplicationController
  before_action :authenticate_api_user!

  def index
    # @bookings = Booking.all.where(user_id: params[:user_id]).order(created_at: :desc)
    @bookings = current_api_user.bookings.order(created_at: :desc)
    render json: {
      status: '00',
      message: 'Successful',
      bookings: BookingSerializer.new(@bookings, {include: [:vehicle]})
    }, status: :ok
  end

  def booking_success
    render json: {
      status: '00',
      message: 'Vehicle Booked Successfully'
    }
  end

  def show
    @booking = current_api_user.bookings.find(params[:id])
    render json: {
      status: '00',
      message: 'Successful',
      data: @booking
    }
  end

  def create
    booking = current_api_user.bookings.new(booking_params)

    if booking.save
      render json: {
        status: '00',
        message: 'Booking created successfully',
        data: booking
      }, status: :ok
    else
      render json: booking.errors, status: :booking_not_created
    end
  end

  def update
    booking = current_api_user.bookings.find(params[:id])
    if booking.update(booking_params)
      render json: {
        status: '00',
        message: 'Booking updated successfully',
        data: booking
      }, status: :ok
    else
      render json: booking.errors, status: :booking_not_updated
    end
  end

  def destroy
    booking = current_api_user.bookings.find(params[:id])
    if booking.destroy
      render json: {
        status: '00',
        message: 'Booking deleted successfully',
        data: booking
      }, status: :ok
    else
      render json: booking.errors, status: :booking_not_deleted
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle_id, :pickup_date, :return_date)
  end
end
