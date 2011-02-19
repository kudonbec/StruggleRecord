class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.string :adress
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
