require 'spec_helper'

describe Region do
  it { should have_many :cities }
  it { should belong_to :country }
end
