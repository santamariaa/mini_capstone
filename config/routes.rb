Rails.application.routes.draw do
  devise_for :users
    root "products#index"
    get '/' => 'products#index'

    get '/products' => 'products#index'

    get '/products/new' => 'products#new'
    post '/products' => 'products#create'

    get '/products/:id' => 'products#show'

    get '/products/:id/edit'=> 'products#edit'
    patch '/products/:id' => 'products#update'
    
    delete '/products/:id' => 'products#destroy'

    post '/orders' => 'orders#create'
    get '/orders/:id' => 'orders#show'

    post '/cart' => 'carted_product#create'

end
