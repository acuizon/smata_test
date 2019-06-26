Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/films/display_characters", to: "films#display_characters"
  get "/films/:id", to: "films#show", as: "show_film"

  get "/search", to: "home#search"

  root to: "home#index", via: [:get]
end
