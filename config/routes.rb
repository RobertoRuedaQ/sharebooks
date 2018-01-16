Rails.application.routes.draw do


  resources :books do 
    member do
      put "like", to: "books#liked"
      put "dislike", to: "books#disliked"
    end
  end


  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
