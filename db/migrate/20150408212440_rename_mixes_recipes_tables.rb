class RenameMixesRecipesTables < ActiveRecord::Migration
  def change
    rename_table :mixes_recipes_tables, :mixes_recipes
  end
end
