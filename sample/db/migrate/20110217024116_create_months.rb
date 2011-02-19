class CreateMonths < ActiveRecord::Migration
  def self.up
    create_table :months do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :months
  end
end
