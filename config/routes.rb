Rails.application.routes.draw do
  scope module: :products do
    get '/products/:id', to: 'products#show'
  end
end
