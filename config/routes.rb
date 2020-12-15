Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      get 'cities/index'
      get 'companies/index'
      get 'people/index'
      get 'people/:id', to: "people#show"
    end
  end
end
