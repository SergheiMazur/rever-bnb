class Booking < ApplicationRecord
  belongs_to :user
  validates :user, presence: :true
  belongs_to :game
end
