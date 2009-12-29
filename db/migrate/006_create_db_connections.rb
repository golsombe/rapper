class CreateDbConnections < ActiveRecord::Migration
  def self.up
    create_table :db_connections do |t|
      t.string :name
      t.string :business_key
      t.string :server
      t.string :database
      t.string :user
      t.string :password
      t.string :environment
      t.integer :db_driver_id
      t.tinyint :shared
      t.tinyint :writeable

      t.timestamps
    end
  end

  def self.down
    drop_table :db_connections
  end
end
