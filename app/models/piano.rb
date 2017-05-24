class Piano < ApplicationRecord
  has_many :bookings
  belongs_to :user
  belongs_to :brand
  has_attachment :photo
end
