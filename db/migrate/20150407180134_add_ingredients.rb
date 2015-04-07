class AddIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient
      t.boolean :pint, :default => false
      t.boolean :cup, :default => false
      t.boolean :half_cup, :default => false
      t.boolean :tablespoon, :default => false
      t.boolean :teaspoon, :default => false
      t.boolean :pinch, :default => false
    end
  end
end
