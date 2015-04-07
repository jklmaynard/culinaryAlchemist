require 'rails_helper'

describe Category do
  it { should have_and_belong_to_many :recipes }
end
