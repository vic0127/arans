class CreateArans < ActiveRecord::Migration
  def self.up
    create_table :arans do |t|
      t.string :name
      t.integer :gal
      t.string :path
      t.string :path1

      t.timestamps
    end
  end

  def self.down
    drop_table :arans
  end
end
