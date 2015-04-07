require "rails_helper"

describe Recipe do
  it { should have_and_belong_to_many :categories }
  it { should have_and_belong_to_many :ingredients }
  it { should have_many :notes }
end
