class AddRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cooktime
      t.text :instructions
      t.string :pairings
    end
  end
end
