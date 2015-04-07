class Recipe < ActiveRecord::Base

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :ingredients
  has_many :notes
  validates :name, :cooktime, :instructions, :pairings, presence: true

end
