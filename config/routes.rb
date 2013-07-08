# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
resources :qa_clients do
  resources :qa_activities 
end

resources :qa_activities do 
  resources :qa_clients
end