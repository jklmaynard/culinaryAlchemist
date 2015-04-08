require "rails_helper"

describe Recipe do
  it { should have_and_belong_to_many :categories }
  it { should have_and_belong_to_many :mixes }
  it { should have_many :notes }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_presence_of :preparation }
end
