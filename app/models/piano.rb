class Piano < ApplicationRecord
  has_many :bookings
  belongs_to :user
  belongs_to :brand
  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  CATEGORIES = ["Piano à Queue", 'Piano Droit', 'Piano Electrique', 'cat']
end

