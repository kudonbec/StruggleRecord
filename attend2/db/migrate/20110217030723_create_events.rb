class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :times
      t.string :name
      t.references :status
      t.string :date
      t.references :place
      t.integer :capacity
      t.text :summary
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
