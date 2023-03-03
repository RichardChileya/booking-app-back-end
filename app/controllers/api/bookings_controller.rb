class Api::BookingsController < ApplicationController
  def index
    user = User.find(params[:id])
    bookings = user.bookings.order(created_at: :desc)
  end

  def show
    booking = Booking.find(params[:id])
  end

  def create
    booking = current_user.bookings.new(booking_params)

    if booking.save 
      notice: 'booking created successfully'
      render json: booking
    else
      render json: booking.errors, status: :booking_not_created
    end
  end

  def update
    booking = Booking.find(params[:id])
    if booking.update(booking_params)
      notice: 'booking updated successfully'
      render json: booking
    else
      render json: booking.errors, status: :booking_not_updated
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    if booking.destroy
      notice: 'booking deleted successfully'
      render json: booking
    else
      render json: booking.errors, status: :booking_not_deleted
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:vehicle_id, :pickup_date, :return_date)
  end
end
