class Game < ApplicationRecord
  belongs_to :user
  validates :user, presence: true, uniqueness: true
  validates :description, presence: true
end
