class Note < ActiveRecord::Base

  belongs_to :recipe
  validates :body, :recipe_id, presence: true

end
