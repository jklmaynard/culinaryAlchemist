class AddCategoriesRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes_categories do |t|
      t.integer :recipe_id
      t.integer :category_id
    end
  end
end
