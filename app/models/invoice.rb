class Invoice < ApplicationRecord
  belongs_to :reservation
  has_one :ship, through: :reservations
  validates :reservation, presence: true
  validates :paid, inclusion: [true, false]
end
