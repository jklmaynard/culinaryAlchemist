class AddColumnsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :description, :text
    add_column :recipes, :preparation, :text
  end
end
