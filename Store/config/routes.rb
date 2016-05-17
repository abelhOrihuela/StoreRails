Rails.application.routes.draw do
  resources :products, path: 'productos'

  resources :sales, path: 'ventas'

  resources :type_clients

  resources :clients, path: 'clientes'

  root 'clients#index'

end
