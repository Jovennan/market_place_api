
MarketPlaceApi::Application.routes.draw do
  # Api definition
  namespace :api, defaults: { format: :json },
                              constrains: { subdomain: 'api' }, path: '/' do
    # We are going to list our resources here
  end
end
