class CreateMeasurementTable < ActiveRecord::Migration
  def change
    create_table :measurement_tables do |t|
      t.integer :measurement
    end
  end
end
