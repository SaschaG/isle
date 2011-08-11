class CreateMines < ActiveRecord::Migration
  def self.up
    create_table :mines do |t|
      t.integer :lvl
      t.integer :points
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :mines
  end
end
