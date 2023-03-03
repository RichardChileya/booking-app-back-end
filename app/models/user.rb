class User < ApplicationRecord
  validates :name, presence: true

  has_many :vehicles, dependent: :destroy
  has_many :bookings, dependent: :destroy
end
