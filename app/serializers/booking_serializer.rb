class BookingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :vehicle_id, :pickup_date, :return_date, :created_at
  belongs_to :vehicle
end
