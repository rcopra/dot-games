class Game < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
