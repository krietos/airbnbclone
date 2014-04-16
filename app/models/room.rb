class Room < ActiveRecord::Base
  validates :name, presence: :true
  validates :bedrooms, numericality: :true
  validates :price, numericality: :true
end
