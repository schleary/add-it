Rails.application.routes.draw do

  root to: "items#index"

  get	     "/items",	            to: "items#index",   as: :items
  get	     "/items/new",	        to: "items#new",     as: :items_new
  post	   "/items",	            to: "items#create",  as: :items_create
  get	     "/items/:id",	        to: "items#show",    as: :items_show
  get	     "/items/:id/edit",	    to: "items#edit",    as: :items_edit
  patch  	 "/items/:id",	        to: "items#update",  as: :items_update
  get      "/items/:id/delete",   to: "items#destroy", as: :items_destroy
  delete   "/items/:id",          to:	"items#destroy", as: :items_delete
  get      "/items/:id/upvote",   to: "items#upvote",  as: :items_upvote
  get      "/items/:id/downvote", to: "items#downvote",as: :items_downvote


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
