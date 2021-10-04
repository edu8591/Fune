class Invoice < ApplicationRecord
  belongs_to :reservation
  validates :reservation, :paid, presence: true
end
