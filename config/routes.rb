Rails.application.routes.draw do
  resources :movies

  post '/movies/:id/add_like', to: 'movies#add_like'
   post '/movies/:id/add_dislike', to: 'movies#add_dislike'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
