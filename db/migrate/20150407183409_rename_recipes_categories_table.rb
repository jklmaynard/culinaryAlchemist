class RenameRecipesCategoriesTable < ActiveRecord::Migration
  def change
    rename_table :recipes_categories, :categories_recipes
  end
end
