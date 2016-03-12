Rails.application.routes.draw do

  root 'main#index'
  get 'auth/:provider/callback' => 'auth#callback'
  get 'auth/logout' => 'auth#logout'
  get 'auth/failure' => 'auth#failure'

  get 'users/new'

  get 'users/create'

  get 'profile' => 'users#show'
  get 'about' => 'main#about'
  
  get 'destination' => 'destination#index'
  get 'destination/new'
  put 'destination/:id' => 'destination#update'
  delete 'destination/:id' => 'destination#destroy'
  post 'destination/:id' => 'destination#create'

  get 'passwords/new'

  get 'passwords/edit'

  get 'reset' => 'passwords#new'
  post 'reset' => 'passwords#create'
  get 'reset/:code' => 'passwords#edit', as: :reset_code
  put 'reset/:code' => 'passwords#update'

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
end
