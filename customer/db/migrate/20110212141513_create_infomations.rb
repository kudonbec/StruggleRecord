class CreateInfomations < ActiveRecord::Migration
  def self.up
    create_table :infomations do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :infomations
  end
end
