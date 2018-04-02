class Location < ApplicationRecord
  validates :building_number, presence: true
  validates :street, presence: true
  validates :building_number, presence: true
  validates :apartment_number, presence: false
  validates :postal_code, presence: true, length: { minimum: 6, maximum: 6 }
  validates :city, presence: true
  validates :province, presence: true
end
