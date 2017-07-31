class Event < ApplicationRecord
  belongs_to :horse

  validates :date, presence: true
  validates :description, presence: true
end
