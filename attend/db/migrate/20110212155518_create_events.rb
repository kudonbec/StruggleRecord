class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :no
      t.string :name
      t.integer :capacity
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
