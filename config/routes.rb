Training::Application.routes.draw do
  
  root :to => 'welcome#index'
  
  get "/boys", :controller => "boys", :action => "index"
  get "/boys/new", :controller => "boys", :action => "new"
  post "/boys", :controller => "boys", :action => "create"
  get "/boys/:id", :controller => "boys", :action => "show" 
  get "/boys/:id/edit", :controller => "boys", :action => "edit" 
  put "/boys/:id", :controller => "boys", :action => "update"
  delete "/boys/:id", :controller => "boys", :action => "delete"

end
