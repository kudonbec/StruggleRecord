class CreateCdspps < ActiveRecord::Migration
  def self.up
    create_table :cdspps do |t|
      t.string :date

      t.timestamps
    end
  end

  def self.down
    drop_table :cdspps
  end
end
