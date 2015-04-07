class AddIngredientsRecipesTable < ActiveRecord::Migration
  def change
    create_table :recipes_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
    end
  end
end
