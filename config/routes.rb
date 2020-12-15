Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      get 'cities/', to: "cities#index"
      get 'companies/', to: "companies#index"
      get 'people/', to: "people#index"
      get 'people/:id', to: "people#show"
    end
  end
end
