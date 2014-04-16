class Reservation < ActiveRecord::Base
  validates :room_id, presence: :true
  validates :user_id, presence: :true
  validates :start_date, presence: :true
  validates :end_date, presence: :true

  belongs_to :room
  belongs_to :user
end
