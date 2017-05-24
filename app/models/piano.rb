class Piano < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_attachment :photo
end
