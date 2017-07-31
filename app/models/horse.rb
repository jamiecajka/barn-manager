class Horse < ApplicationRecord
  belongs_to :trainer, :class_name => 'User'
  belongs_to :owner, :class_name => 'User'
  belongs_to :veterinarian
  belongs_to :farrier

  has_many :users
  has_many :charges
  has_many :events

  validates :registered_name, uniqueness: true
  validates :barn_name, presence: true
  validates :breed, presence: true
  validates :trainer_id, presence: true
  validates :owner_id, presence: true
  validates :veterinarian_id, presence: true
  validates :farrier_id, presence: true

end
