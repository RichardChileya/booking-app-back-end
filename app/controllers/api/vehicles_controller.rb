class Api::VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.order(created_at: :desc)
    render json: {
      status: '00',
      vehicles: @vehicles
    }, status: :ok
  end

  def show
    @vehicle = Vehicle.where(id: params[:id])
    render json: {
      status: '00',
      vehicle: @vehicle
    }, status: :ok
  end

  def create
    @vehicle = current_api_user.vehicles.new(vehicles_params)

    if @vehicle.save!
      render json: {
        status: '00',
        message: 'Vehicle created successfully!',
        vehicle: @vehicle
      }, status: :ok
    else
      render json: booking.errors, status: :vehicle_not_created
    end
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    if @vehicle.update(vehicles_params)
      render json: {
        status: '00',
        message: 'Vehicle updated successfully!',
        vehicle: @vehicle
      }, status: :ok
    else
      render json: vehicle.errors, status: :vehicle_not_updated
    end
  end

  def destroy
    vehicle = Vehicle.find(params[:id])

    if vehicle.destroy!
      @vehicles = Vehicle.order(created_at: :desc)
      render json: {
        status: '00',
        message: 'Vehicle deleted successfully!',
        vehicles: @vehicles
      }, status: :ok
    else
      render json: vehicle.errors, status: :vehicle_not_deleted
    end
  end

  private

  def vehicles_params
    params.require(:vehicles).permit(:name, :image, :model, :description, :daily_price, :availability)
  end
end
