class AddNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :body
    end
  end
end
