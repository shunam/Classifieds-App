class HomeController < ApplicationController
  before_filter :find_categories_and_locations

  def index
    @sub_category_housings = Category.find(:all, :conditions => "parent_id = 1")

    sub_category_for_sales_temp = Category.find(:all, :conditions => "parent_id = 11")
    @sub_category_for_sales = restructure_array(sub_category_for_sales_temp, 4)

    sub_category_services_temp = Category.find(:all, :conditions => "parent_id = 48")
    @sub_category_services = restructure_array(sub_category_services_temp, 3)
    
    sub_category_jobs_temp = Category.find(:all, :conditions => "parent_id = 70")
    @sub_category_jobs = restructure_array(sub_category_jobs_temp, 2)

  end

  def post_classified
    @classified = Classified.new
  end

  def create_classified
    @classified = Classified.new(params[:classified])
    if @classified.save
      redirect_to show_classified_path(@classified)
    end
  end

  def show
    @classified = Classified.find(params[:id])
  end

  private

  def find_categories_and_locations
    @locations = Location.find(:all, :order => "Name ASC")
    @categories = Category.find(:all, :conditions => "parent_id is NULL")
    @categories.each do |category|
      case category.id
      when 1
        @sub_category_housings = category.children.collect{|x| [x.id, x.name]}
      when 11
        @sub_category_for_sales = category.children.collect{|x| [x.id, x.name]}
      when 48
        @sub_category_services = category.children.collect{|x| [x.id, x.name]}
      when 70
        @sub_category_jobs = category.children.collect{|x| [x.id, x.name]}
      end
    end
  end
    
  def restructure_array(sub_values, divide_by)
    values = []
    temp = []
    sub_values.each do |sub|
      temp << sub
      if temp.size == divide_by
        values << temp.clone
        temp.clear
      end
    end
    return values
  end

end
