class BookmarkBase < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :user_id, :integer
      t.column :description, :text
      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :items
  end
end
