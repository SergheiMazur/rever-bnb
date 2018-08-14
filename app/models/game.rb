class Game < ApplicationRecord
  belongs_to :user
  validates :user, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
