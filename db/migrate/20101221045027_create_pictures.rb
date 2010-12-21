class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :size
      t.string  :content_type
      t.string  :filename
      t.integer :height
      t.integer :width
      t.integer :parent_id
      t.string  :thumbnail
      t.integer :db_file_id
    end

    create_table :db_files do |t|
      t.binary :data
    end

    add_column :classifieds, :picture_id, :integer
  end

  def self.down
    remove_column :classifieds, :picture_id
    drop_table :db_files
    drop_table :pictures
  end
end
