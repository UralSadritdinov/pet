Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  root "home#index"

  resources :posts do
    post "publish", to: "publication#create"
    delete "unpublish", to: "publication#destroy"
  end
end
