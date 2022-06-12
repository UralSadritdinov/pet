Rails.application.routes.draw do
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy"
  end

  root "about_me#show"

  resource :about_me, controller: :about_me, only: %i[show]
  resource :contact_me, controller: :contact_me, only: %i[new create]

  resources :posts do
    post "publish", to: "publications#create"
    delete "unpublish", to: "publications#destroy"
  end
end
