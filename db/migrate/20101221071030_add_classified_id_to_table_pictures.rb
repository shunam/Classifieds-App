class AddClassifiedIdToTablePictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :classified_id, :integer
    remove_column :classifieds, :picture_id
  end

  def self.down
    remove_column :pictures, :classified_id
    add_column :classifieds, :picture_id, :integer
  end
end
