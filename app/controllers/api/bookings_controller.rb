class Api::BookingsController < ApplicationController
  def index
    @bookings = Booking.all.where(user_id: params[:user_id]).order(created_at: :desc)
    render json: @bookings
    
  end

  def show
    @booking = Booking.find(params[:id])
    render json: @booking
  end

  def create
    booking = current_user.bookings.new(booking_params)

    if booking.save
      flash[:notice] = 'booking created successfully'
      render json: booking
    else
      render json: booking.errors, status: :booking_not_created
    end
  end

  def update
    booking = Booking.find(params[:id])
    if booking.update(booking_params)
      flash[:notice] = 'booking updated successfully'
      render json: booking
    else
      render json: booking.errors, status: :booking_not_updated
    end
  end

  def destroy
    booking = Booking.find(params[:id])
    if booking.destroy
      flash[:notice] = 'booking deleted successfully'
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
