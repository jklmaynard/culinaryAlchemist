require "rails_helper"

describe Ingredient do
  it { should validate_presence_of :ingredient }
  it { should have_many :mixes }
end
