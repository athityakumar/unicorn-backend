Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/api/v1/sign_up' => 'api/v1/sessions#create', via: [:options, :post, :get]
  match '/api/v1/sign_in' => 'api/v1/sessions#fetch', via: [:options, :post, :get]

  # post '/api/v1/sign_up' => 'api/v1/sessions#create'
  # post '/api/v1/sign_in' => 'api/v1/sessions#fetch'

  get '/api/v1/fetch' => 'api/v1/sessions#index'

  # namespace :api do
  #   namespace :v1 do
  #     post '/sign_up' => 'sessions#create'
  #     post '/sign_in' => 'sessions#fetch'

  #     get '/fetch' => 'sessions#index'

  #   end
  # end

end
