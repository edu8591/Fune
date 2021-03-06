class Ship < ApplicationRecord
  TYPES = %w[fishing tourism diving party leisure sight-seeing]
  has_many_attached :images
  belongs_to :user
  has_many :invoices, through: :reservations
  has_many :reservations
  validates :max_people, :latitude, :longitude, :max_people, :price, :ship_type, :user, presence: true
  validates :ship_type, inclusion: TYPES
  validates :price, :max_people, numericality: { greater_than: 0 }
  include Filterable
  reverse_geocoded_by :latitude, :longitude, address: :loc
end
