class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.integer :ingredient_id
      t.integer :quantity
      t.integer :measurement_id
    end
  end
end
