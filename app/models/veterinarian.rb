class Veterinarian < ApplicationRecord
  has_many :horse

  validates :name, presence: true
  validates :phone_number, presence: true, numericality: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true, numericality: true
end
