# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :qa_clients

resources :qa_activities do 
  resources :qa_clients
end