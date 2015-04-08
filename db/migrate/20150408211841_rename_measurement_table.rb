class RenameMeasurementTable < ActiveRecord::Migration
  def change
    rename_table :measurement_tables, :measurements
  end
end
