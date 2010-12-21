class Classified < ActiveRecord::Base
  belongs_to :picture

  cattr_reader :per_page
  @@per_page = 100

  def location_name
    Location.find(:first, :conditions => "id = '#{location_id}'", :select => "name").name
  end

  def category_name
    Category.find(:first, :conditions => "id = '#{category_id}'", :select => "name").name
  end

  def sub_category_name
    Category.find(:first, :conditions => "id = '#{sub_category_id}'", :select => "name").name
  end
end
