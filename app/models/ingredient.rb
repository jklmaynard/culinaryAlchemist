class Ingredient < ActiveRecord::Base
  has_many :mixes
  validates :ingredient, presence: true

end
