require 'spec_helper'

describe Room do
  it { should validate_presence_of :name }
  it { should validate_numericality_of :bedrooms }
  it { should validate_numericality_of :price }
end
