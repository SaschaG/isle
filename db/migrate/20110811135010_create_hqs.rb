class CreateHqs < ActiveRecord::Migration
  def self.up
    create_table :hqs do |t|
      t.integer :lvl
      t.integer :points
      t.integer :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :hqs
  end
end
