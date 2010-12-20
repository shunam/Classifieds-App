class CreateClassifieds < ActiveRecord::Migration
  def self.up
    create_table :classifieds do |t|
      t.string :title
      t.decimal :price, :scale => 2
      t.integer :location_id
      t.string :misc
      t.text :description
      t.integer :category_id
      t.integer :sub_category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :classifieds
  end
end
