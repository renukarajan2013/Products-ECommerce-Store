Rails.application.routes.draw do



Booknook::Application.routes.draw do


	resources :products
	root 'products#index'

  	get '/aboutus' => 'about#about'
  	get '/browse' => 'products#browse', :as => :browse
  	get '/mycart' => 'mycart#mycart', :as => :mycart
	get 'book_show/products/:product_id/' => 'books#show', :as => :book_show
	get '/games/products/:product_id' => 'games#show', :as => :game_show
	get '/electronics/products/:product_id' => 'electronics#show', :as => :electronics_show



	resources :carts
	resources :cart_items
	resources :games
	resources :electronics
	resources :music
	resources :books
	resources :products do
	  resources :categories
	end


	post '/products/:product_id/categories/:id(.:format)' => 'products#show_products_page', :as => :show_products_page
        post 'add_to_cart_path/:product_id' => 'carts#add_to_cart', :as => :add_to_cart
	devise_for :users

end
end

