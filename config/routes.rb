Rails.application.routes.draw do


#  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

Booknook::Application.routes.draw do


	resources :products
	root 'products#index'

  	get '/AboutUs' => 'about#about'
  	#get '/Browse' => 'browse#browse'
  	get '/Browse' => 'products#browse', :as => :browse
  	get '/MyCart' => 'mycart#mycart', :as => :mycart
	get 'book_show/products/:product_id/' => 'books#show', :as => :book_show
	get '/games/products/:product_id' => 'games#show', :as => :game_show
	get '/electronics/products/:product_id' => 'electronics#show', :as => :electronics_show



	resources :carts
	resources :games
	resources :electronics
	resources :products do
		resources :categories
	end

	resources :music, controller: 'products', type: 'Music' 
	resources :books, controller: 'products', type: 'Book' 

	post '/products/:product_id/categories/:id(.:format)' => 'products#show_products_page', :as => :show_products_page
        #post 'add_to_cart_path/:book_id' => 'carts#add_to_cart', :as => :add_to_cart
        post 'add_to_cart_path/:product_id' => 'carts#add_to_cart', :as => :add_to_cart
	devise_for :users

end
end

