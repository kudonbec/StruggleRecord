class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.integer :hour
      t.integer :minute

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
