class Vehicle < ApplicationRecord
  validates: :name, presence: true
  validates: :image, presence: true
  validates: :model, presence: true
  validates: :daily_price, presence: true
  validates: :description, presence: true

  belongs_to :user
  has_many :bookings
end
