class Room < ActiveRecord::Base
  validates :name, presence: :true
  validates :bedrooms, numericality: :true
  validates :price, numericality: :true

  has_many :reservations
  belongs_to :user
  belongs_to :neighborhood
end
