class CreateVillages < ActiveRecord::Migration
  def self.up
    create_table :villages do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.integer :points
      t.integer :hq_id
      t.integer :woodhouse_id
      t.integer :mine_id
      t.integer :pit_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :villages
  end
end
