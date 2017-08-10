class Horse < ApplicationRecord
  belongs_to :user
  belongs_to :veterinarian
  belongs_to :farrier
  has_many :charges
  has_many :events
  has_many :notes
  mount_uploader :picture, PictureUploader
  validates :barn_name, presence: true
  validates :breed, presence: true
  validates :user_id, presence: true
  validates :veterinarian_id, presence: true
  validates :farrier_id, presence: true
end
