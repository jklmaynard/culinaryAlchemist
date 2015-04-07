require "rails_helper"

describe Note do
  it { should belong_to :recipe }
end
