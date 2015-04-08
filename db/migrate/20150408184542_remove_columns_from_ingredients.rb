class RemoveColumnsFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :pint
    remove_column :ingredients, :cup
    remove_column :ingredients, :half_cup
    remove_column :ingredients, :tablespoon
    remove_column :ingredients, :teaspoon
    remove_column :ingredients, :pinch
  end
end
