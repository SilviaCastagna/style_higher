class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, length: { minimum: 1 }, allow_blank: false
  has_one_attached :photo
end
