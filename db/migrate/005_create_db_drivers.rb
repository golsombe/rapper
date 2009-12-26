class CreateDbDrivers < ActiveRecord::Migration
  def self.up
    create_table :db_drivers do |t|
      t.string :name
      t.string :desc
      t.decimal :version
      t.string :require_exp

      t.timestamps
    end
  end

  def self.down
    drop_table :db_drivers
  end
end
