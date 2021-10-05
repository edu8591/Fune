class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :ssn, :email, :password, :first_name, :last_name, :phone_number, :country, :city, :address, :birth_date, presence: true
  validates :phone_number, :ssn, format: { with:/\d+/ }, length: {minimum: 9, maximum: 12}
  has_many :reservations
  has_many :ships
  has_many :invoices, through: :reservations
  validates :ssn, uniqueness: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
