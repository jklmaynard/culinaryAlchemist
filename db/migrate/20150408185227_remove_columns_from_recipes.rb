class RemoveColumnsFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :instructions
    remove_column :recipes, :cooktime
  end
end
