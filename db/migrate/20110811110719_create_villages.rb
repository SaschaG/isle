class CreateVillages < ActiveRecord::Migration
  def self.up
    create_table :villages do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.integer :points
      t.integer :rathaus_id
      t.integer :holzfaeller_id
      t.integer :miene_id
      t.integer :steinbruch_id
      t.integer :bauernhof_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :villages
  end
end
