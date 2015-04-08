class Mix < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :measurement
  has_and_belongs_to_many :recipes
end
