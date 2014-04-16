class Neighborhood < ActiveRecord::Base
  validates :name, presence: :true
  belongs_to :city
  has_many :rooms
end
