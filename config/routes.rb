map.resources :comments

map.namespace :admin do |admin|
   admin.resources :orders, :member => {:comments => :get, :resend_order => :post}
end
