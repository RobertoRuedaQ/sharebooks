Rails.application.routes.draw do


  resources :books do
    resources :comments
    member do
      put "like", to: "books#liked"
      put "dislike", to: "books#disliked"
    end
  end


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :profiles, only: [:index, :show]
  
  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
