require 'spec_helper'

describe City do
  it { should have_many :neighborhoods }
  it { should belong_to :region }
end
