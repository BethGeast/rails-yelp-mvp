Rails.application.routes.draw do
  # get "/restaurants", to: "restaurants#index", as: :restaurants
  resources :restaurants, except:[:destroy, :edit, :update] do
    resources :reviews, only: [:create]
  end
end
