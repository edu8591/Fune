class Reservation < ApplicationRecord
  STATUS = %i[apply reply confirmation cancelled invoiced]
  belongs_to :user
  belongs_to :ship
  has_one :invoice
  validates :user, :ship, :price, :people_in_reservation, :reservation_start, :reservation_end, :negotiation_status, presence: true
  validates :price, :number_of_people, numericality: {greater_than: 0}
  validates :negotiation_status, inclussion: STATUS
  validates :number_of_people, numericality: {less_than_or_equal_to: :ship.max_people}
end
