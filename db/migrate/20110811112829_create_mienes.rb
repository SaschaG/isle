class CreateMienes < ActiveRecord::Migration
  def self.up
    create_table :mienes do |t|
      t.integer :lvl
      t.integer :points
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :mienes
  end
end
