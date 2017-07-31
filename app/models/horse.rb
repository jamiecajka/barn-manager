class Horse < ApplicationRecord
  belongs_to :trainer_id, :class_name => 'User'
  belongs_to :owner_id, :class_name => 'User'
  belongs_to :veterinarian
  belongs_to :farrier

  has_many :users
  has_many :charges
  has_many :events

  validates :registered_name, uniqueness: true
  validates :barn_name, presence: true
  validates :breed, presence: true

end
