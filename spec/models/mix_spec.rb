require 'rails_helper'

describe Mix do
  it { should belong_to :ingredient }
  it { should belong_to :measurement }
  it { should have_and_belong_to_many :recipes}
end
