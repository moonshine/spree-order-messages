map.resources :comments

map.namespace :admin do |admin|
   admin.resources :orders, :member => {:comments => :get}
end
