class CreatePackageSources < ActiveRecord::Migration
  def self.up
    create_table :package_sources do |t|
      t.string :name
      t.integer :db_connection_id
      t.integer :package_id
      t.decimal :version
      t.text :source_sql

      t.timestamps
    end
  end

  def self.down
    drop_table :package_sources
  end
end
