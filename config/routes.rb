ActionController::Routing::Routes.draw do |map|
  map.root :controller => "home"
  map.post_classified '/post_classified', :controller => "home", :action => "post_classified"
end
