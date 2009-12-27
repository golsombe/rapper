class CreatePackages < ActiveRecord::Migration
  def self.up
    create_table :packages do |t|
      t.string :name
      t.string :desc
      t.string :business_key
      t.decimal :version
      t.integer :role_id
      t.string :user_id
      t.datetime :last_run_dt

      t.timestamps
    end
  end

  def self.down
    drop_table :packages
  end
end
