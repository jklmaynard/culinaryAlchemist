class CreateMixesRecipesTable < ActiveRecord::Migration
  def change
    create_table :mixes_recipes_tables do |t|
      t.integer :recipe_id
      t.integer :mix_id
    end
  end
end
