class Horse < ApplicationRecord
  belongs_to :trainer_id, :class_name => 'User'
  belongs_to :owner_id, :class_name => 'User'
  has_many :users
  has_many :charges
  has_one :veterinarian
  has_one :farrier
  has_many :events

  validates :registered_name, uniqueness: true
  validates :barn_name, presence: true
  validates :breed, presence: true

end
