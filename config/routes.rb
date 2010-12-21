ActionController::Routing::Routes.draw do |map|
  map.access_token '/access_token', :controller => "application", :action => "access_token"
  
  map.root :controller => "home"
  map.post_classified '/post_classified', :controller => "home", :action => "post_classified", :method => :get
  map.create_post_classified '/post_classified/create', :controller => "home", :action => "create_classified", :method => :post
  map.show_classified '/classified/:id/show', :controller => "home", :action => "show", :method => :get
  map.result_classified '/classified/results', :controller => "home", :action => "result", :method => :get

  map.upload_picture '/pictures/upload_picture', :controller => "pictures", :action => "upload_picture", :method => :post
  map.show_picture '/pictures/:picture_id/:thumbnail', :controller => "pictures", :action => "show_picture", :method => :get
end
