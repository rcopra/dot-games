class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game

  enum status: [ :pending, :rejected, :accepted ]
end
