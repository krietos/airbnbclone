require 'spec_helper'

describe Country do
  it { should have_many :regions }
end
