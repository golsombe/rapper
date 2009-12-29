class CreatePackageMappings < ActiveRecord::Migration
  def self.up
    create_table :package_mappings do |t|
	t.string :source_row_key
	t.string :destination_value
	t.string :destination_field
	t.datetime :start_dt
	t.datetime :end_dt
	t.integer :package_source_id
	t.integer :db_connection_id
	t.timestamps
    end
  end

  def self.down
    drop_table :package_mappings
  end
end
