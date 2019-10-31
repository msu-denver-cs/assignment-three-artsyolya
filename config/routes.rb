Rails.application.routes.draw do
  devise_for :users
  resources :cars do
    collection do
      get 'search'
    end
  end
  # search_cars GET /cars/search(.:format) cars#search
  resources :makes do
    collection do
      get 'search'
    end
  end
  resources :parts do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "cars#index"
end
