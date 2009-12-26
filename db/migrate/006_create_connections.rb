class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :connections do |t|
      t.string :name
      t.string :business_key
      t.string :server
      t.string :database
      t.string :user
      t.string :password
      t.string :environment
      t.tinyint :shared
      t.tinyint :writeable

      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
