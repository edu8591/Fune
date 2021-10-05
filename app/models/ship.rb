class Ship < ApplicationRecord
  TYPES = %w[fishing tourism diving party leisure sight-seeing]
  has_many_attached :images
  belongs_to :user
  has_many :reservations
  validates :max_people, :latitude, :longitude, :max_people, :price, :ship_type, :user, presence: true
  validates :ship_type, inclusion: TYPES
  validates :price, :max_people, numericality: { greater_than: 0 }
end
