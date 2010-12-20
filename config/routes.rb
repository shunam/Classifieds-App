ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"
  map.post_classified '/post_classified', :controller => "home", :action => "post_classified", :method => :get
  map.create_post_classified '/post_classified/create', :controller => "home", :action => "create_classified", :method => :post
  map.show_classified '/classified/:id/show', :controller => "home", :action => "show", :method => :get
end
