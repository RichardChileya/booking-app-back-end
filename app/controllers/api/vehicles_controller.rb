class Api::VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.order(created_at: :desc)
    render json: {
      status: '00',
      data: @vehicles
    }
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: {
      status: '00',
      data: @vehicle
    }
  end

  def create
    vehicle = current_api_user.vehicles.new(vehicles_params)

    if vehicle.save
      render json: {
        status: '00',
        message: 'Vehicle was successfully created',
        data: VehicleSerializer.new(vehicle).serializable_hash[:data][:attributes]
      }
    else
      render json: booking.errors, status: :vehicle_not_created
    end
  end

  def update
    vehicle = Vehicle.find(params[:id])
    if vehicle.update(vehicles_params)
      render json: vehicle
    else
      render json: vehicle.errors, status: :vehicle_not_updated
    end
  end

  def destroy
    vehicle = Vehicle.find(params[:id])
    if vehicle.destroy
      render json: {
        status: '00',
        message: 'Vehicle was successfully deleted',
      }
    else
      render json: vehicle.errors, status: :vehicle_not_deleted
    end
  end

  private

  def vehicles_params
    params.require(:vehicles).permit(:name, :image, :model, :description, :daily_price, :availability)
  end
end
