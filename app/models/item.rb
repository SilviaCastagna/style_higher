class Item < ApplicationRecord
  belongs_to :user
  has_many :item_photos
  has_many :bookings, dependent: :destroy
  validates :title, presence: true
  validates :description, length: { minimum: 20 }, allow_blank: false
end
