Rails.application.routes.draw do
  resources :articles, path: "(:owner_name)/articles"
  resources :owners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
