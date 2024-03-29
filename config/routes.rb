Houtai::Application.routes.draw do
  resources :links

  resources :videos

  resources :articles

  resources :notices

  resources :periodicals

  match '/downloads/kind/:kind', to: 'downloads#show_kind', :as => 'downloads_kind'

  resources :downloads

  resources :albums do
    resources :photos
  end

  match '/aboutshetuans/kind/:kind', to: 'aboutshetuans#show_kind', :as => 'aboutshetuans_kind'

  match '/aboutshetuans/star', to: 'aboutshetuans#star'

  resources :aboutshetuans

  resources :stars

  match '/aboutshelians/theme/:theme', to: 'aboutshelians#theme', :as => 'aboutshelians_theme'

  match '/aboutshelians/star', to: 'aboutshelians#star'

  resources :aboutshelians

  mount Rich::Engine => '/rich', :as => 'rich'
  
  match '/events/area/:area', to: 'events#show_area', :as => 'events_area'

  match '/events/kind/:kind', to: 'events#show_kind', :as => 'events_kind'

  resources :events

  root :to => 'home#index'

  mount RailsAdmin::Engine => '/rails_admin', :as => 'rails_admin'
  
  devise_for :admins

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
