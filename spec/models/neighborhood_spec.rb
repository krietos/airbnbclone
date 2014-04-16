require 'spec_helper'

describe Neighborhood do
  it { should have_many :rooms }
  it { should belong_to :city }
end
