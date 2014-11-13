Rails.application.routes.draw do

  resources :users, only: [:new, :create]

  resources :restaurants do
    resources :reservations
  end

  get 'reservations/' => 'reservations#show'

  root 'restaurants#index'

  resources :sessions, only: [:new, :create, :destroy]

# Prefix Verb   URI Pattern                                   Controller#Action
# user_reservation_index GET    /user/:user_id/reservation(.:format)          reservation#index
#                        POST   /user/:user_id/reservation(.:format)          reservation#create
#   new_user_reservation GET    /user/:user_id/reservation/new(.:format)      reservation#new
#  edit_user_reservation GET    /user/:user_id/reservation/:id/edit(.:format) reservation#edit
#       user_reservation GET    /user/:user_id/reservation/:id(.:format)      reservation#show
#                        PATCH  /user/:user_id/reservation/:id(.:format)      reservation#update
#                        PUT    /user/:user_id/reservation/:id(.:format)      reservation#update
#                        DELETE /user/:user_id/reservation/:id(.:format)      reservation#destroy
#             user_index POST   /user(.:format)                               user#create
#               new_user GET    /user/new(.:format)                           user#new
#       restaurant_index GET    /restaurant(.:format)                         restaurant#index
#                        POST   /restaurant(.:format)                         restaurant#create
#         new_restaurant GET    /restaurant/new(.:format)                     restaurant#new
#        edit_restaurant GET    /restaurant/:id/edit(.:format)                restaurant#edit
#             restaurant GET    /restaurant/:id(.:format)                     restaurant#show
#                        PATCH  /restaurant/:id(.:format)                     restaurant#update
#                        PUT    /restaurant/:id(.:format)                     restaurant#update
#                        DELETE /restaurant/:id(.:format)                     restaurant#destroy
#               sessions POST   /sessions(.:format)                           sessions#create
#            new_session GET    /sessions/new(.:format)                       sessions#new
#                session DELETE /sessions/:id(.:format)                       sessions#destroy

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
