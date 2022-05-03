Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  root "home#index"

  resources :posts do
    resources :publication, only: %w[create destroy], module: :posts
  end
end
