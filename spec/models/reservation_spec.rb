require 'spec_helper'

describe Reservation do
  it { should validate_presence_of :room_id }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :start_date }
  it { should validate_presence_of :end_date }

  it { should belong_to :room }
  it { should belong_to :user }
end
