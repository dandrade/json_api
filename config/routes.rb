Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :cities, only: :index
      resources :companies, only: :index
      resources :people, only: [:index, :show]
      # get 'cities/', to: "cities#index"
      # get 'companies/', to: "companies#index"
      # get 'people/', to: "people#index"
      # get 'people/:id', to: "people#show"
    end
  end
end
