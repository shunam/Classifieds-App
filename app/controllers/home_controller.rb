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
    prepare_token
    response = @access_token.post('/API/user_info', "token=#{session["token_#{session[:fellownation_user_id]}"]}")
    result = ActiveSupport::JSON.decode(response.body)["results"]
    @classified = Classified.new(params[:classified])
    @classified.first_name = result["first_name"]
    @classified.last_name = result["last_name"]
    @classified.url = result["public_URL"]
    unless params[:pictures].blank?
      params[:pictures].each do |k,value|
        @classified.pictures << Picture.new(value)
      end
    end
    if @classified.save
      redirect_to show_classified_path(@classified)
    end
  end

  def show
    @classified = Classified.find(params[:id])
    params[:category_id] = @classified.category_id
    params[:location_id] = @classified.location_id
    params[:sub_category_id] = @classified.sub_category_id
  end

  def result
    @results = {}
    conditions = []
    conditions << "location_id = #{params[:location_id]}" if !params[:location_id].blank? && params[:location_id] != "0"
    if !params[:category_id].blank? && params[:category_id] != "0"
      conditions << "category_id = #{params[:category_id]}"
      @category = Category.find(params[:category_id])
      @sub_categories = @category.children.collect{|x| [x.id, x.name]}
    end
    conditions << "sub_category_id = #{params[:sub_category_id]}" if !params[:sub_category_id].blank? && params[:sub_category_id] != "0"
    
    @classifieds = Classified.paginate(:page => params[:page], :order => "created_at DESC", :conditions => conditions.join(" AND ")).each do |classified|
      date = classified.created_at.to_date
      if @results[date].blank?
        @results[date] = [classified]
      else
        @results[date] << classified
      end
    end
    @results = @results.sort.reverse
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
