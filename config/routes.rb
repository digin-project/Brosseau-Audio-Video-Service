Brosseau::Application.routes.draw do
  get "index/home"

  resources :articles
  resources :aubaines
  resources :nouveautes
  resources :pages

 
  match '/expert',   :to => 'articles#show'
  match '/deals',   :to => 'aubaines#show'
  match '/nouveautes',   :to => 'nouveautes#show'
  
  
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  match '/apropos',   :to => 'pages#company'
  match '/historique',   :to => 'pages#history'
  match '/equipe',   :to => 'pages#team'
  match '/entreprise',   :to => 'pages#company'
  match '/produits',    :to => 'pages#products'
  match '/commercial', :to => 'pages#professional'
  match '/audio',   :to => 'pages#audio'
  match '/video',   :to => 'pages#video'   
  match '/domotique', :to => 'pages#automation'
  match '/home',   :to => 'pages#home'
  
  root :to => 'pages#home'   #Routage directement vers la home page (en français)
  #root :to => 'index#home'  #Routage vers la page de sélection de langues


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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
