class CreatePits < ActiveRecord::Migration
  def self.up
    create_table :pits do |t|
      t.integer :lvl
      t.integer :points
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :pits
  end
end
