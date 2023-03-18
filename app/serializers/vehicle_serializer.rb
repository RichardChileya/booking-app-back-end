class VehicleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :model, :daily_price, :description, :available
end
