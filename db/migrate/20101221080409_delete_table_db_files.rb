class DeleteTableDbFiles < ActiveRecord::Migration
  def self.up
    drop_table :db_files
  end

  def self.down
    create_table :db_files do |t|
      t.binary :data
    end
  end
end
