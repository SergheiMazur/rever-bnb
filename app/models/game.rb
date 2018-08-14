class Game < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :user, uniqueness: { scope: :booking }
end
