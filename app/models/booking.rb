class Booking < ApplicationRecord
  belongs_to :user
  validates :user, presence: :true
  validates :startdate, presence: :true
  validates :enddate, presence: :true
  belongs_to :game
end
