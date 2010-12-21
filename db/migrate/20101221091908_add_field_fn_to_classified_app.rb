class AddFieldFnToClassifiedApp < ActiveRecord::Migration
  def self.up
    add_column :classifieds, :first_name, :string
    add_column :classifieds, :last_name, :string
    add_column :classifieds, :url, :string
  end

  def self.down
    remove_column :classifieds, :first_name, :last_name, :url
  end
end
