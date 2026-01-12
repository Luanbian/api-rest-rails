Rails.application.routes.draw do
  scope module: :products do
    get '/products/:id', to: 'products#show'
    post '/products', to: 'products#create'
  end
end
