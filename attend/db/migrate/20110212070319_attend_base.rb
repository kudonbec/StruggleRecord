class AttendBase < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.column :no, :integer
      t.column :title, :string
      t.column :states_id, :integer
      t.column :date_id, :integer
      t.column :place_id, :integer
      t.column :capacity_id, :integer
      t.column :description, :text
      t.column :created_at, :datetime
      t.column :user_id, :integer
    end
  end

  def self.down
    drop_table :events
  end
end
