class Ship < ApplicationRecord

  TYPES = %i[fishing tourism diving party leisure sight-seeing]
  has_one_attached :photo
  belongs_to :user
  has_many :reservations
  validates :max_people, :min_price, :max_price, :type, :location, :user, presence: true
  validates :type, inclusion: TYPES
  validates :min_price, :max_price, :max_people, numericality: {greater_than: 0}
  validates :location, length: {minimum: 4}
end
