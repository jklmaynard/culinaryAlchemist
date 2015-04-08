require "rails_helper"

describe Note do
  it { should belong_to :recipe }
  it { should validate_presence_of :body }
  it { should validate_presence_of :recipe_id }
end
