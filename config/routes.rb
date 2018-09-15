Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    put 'like', to: 'pins#upvote'
  end

  root to: "pins#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
