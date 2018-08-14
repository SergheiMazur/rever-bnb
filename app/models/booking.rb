class Booking < ApplicationRecord
  belongs_to :user
  validates :user, presence: :true
  has_many :games
end
