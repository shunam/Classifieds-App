class AddTypedLocationToTableClassifieds < ActiveRecord::Migration
  def self.up
    add_column :classifieds, :typed_location, :string
  end

  def self.down
    remove_column :classifieds, :typed_location
  end
end
