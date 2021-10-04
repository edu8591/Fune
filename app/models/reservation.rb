class Reservation < ApplicationRecord
  STATUS = %w[apply reply confirmation cancelled invoiced]
  belongs_to :user
  belongs_to :ship
  has_one :invoice # has_many
  validates :price, :people_in_reservation, :reservation_start, :reservation_end, :negotiation_status, presence: true
  validates :price, numericality: {greater_than: 0 }
  validates :negotiation_status, inclusion: STATUS
  validate :less_than, on: :create
  validate :reservation_end, if: :greater_than_reservation_start

  private

  def greater_than_reservation_start
    return false if reservation_end.nil? || reservation_start.nil?

    return reservation_end < reservation_start
  end

  def less_than
    return false if people_in_reservation.nil?

    unless people_in_reservation <= ship.max_people
      errors.add(:base, 'the number of people shoud be less or equal to the ammount allowed for this boat')
    true
    end
  end
end
