class Game < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
  validates :status, inclusion: {in: ["in use", "returned", "available", "late" ] }
end
