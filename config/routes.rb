require 'api_constraints'
MarketPlaceApi::Application.routes.draw do
  devise_for :users
  # Api definition
  namespace :api, defaults: { format: :json },
                              constrains: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
              constraints: ApiConstraints.new(version: 1, default: true) do
        # We are going to list our resources here
    end
  end
  get 'home' => "sei_la#index"
end
