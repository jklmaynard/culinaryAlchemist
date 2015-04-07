class AddColumnToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :recipe_id, :integer
  end
end
