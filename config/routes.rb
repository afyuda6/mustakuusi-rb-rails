Rails.application.routes.draw do
  get "/games", to: "games#index"
  get "/characters", to: "characters#index"

  root to: "application#route_not_found", via: :all

  match "*path", to: "application#route_not_found", via: :all
end
