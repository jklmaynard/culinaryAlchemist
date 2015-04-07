require "rails_helper"

describe Recipe do
  it { should have_and_belong_to_many :categories }
  it { should have_and_belong_to_many :ingredients }
  it { should have_many :notes }
  it { should validate_presence_of :name }
  it { should validate_presence_of :cooktime }
  it { should validate_presence_of :instructions }
  it { should validate_presence_of :pairings }
end
