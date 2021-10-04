class Reservation < ApplicationRecord
  STATUS = %w[apply reply confirmation cancelled invoiced]
  belongs_to :user
  belongs_to :ship
  has_one :invoice # has_many
  validates :price, :people_in_reservation, :reservation_start, :reservation_end, :negotiation_status, presence: true
  validates :price, numericality: {greater_than: 0 }
  validates :negotiation_status, inclusion: STATUS
  validate :less_than, on: :create
  validate :greater_than_reservation_start, on: [:create, :update]

  private

  def greater_than_reservation_start
    return if reservation_end.nil? || reservation_start.nil?

    unless (reservation_end - reservation_start).positive?
      errors.add(:reservation_end, 'the reservation_end should be greater than reservation_start')
    end
  end

  def less_than
    return if people_in_reservation.nil?

    unless people_in_reservation <= ship.max_people
      errors.add(:people_in_reservation, 'the number of people shoud be less or equal to the ammount allowed for this boat')
    end
  end
end
