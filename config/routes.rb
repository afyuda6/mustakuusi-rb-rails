Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/swagger'
  mount Rswag::Api::Engine => '/api-docs'
  get "/games", to: "games#index"
  get "/characters", to: "characters#index"

  root to: "application#route_not_found"

  match "*path", to: "application#route_not_found", via: :all
end
