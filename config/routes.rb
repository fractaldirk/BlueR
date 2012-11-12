BlueRobin1::Application.routes.draw do
  resources :wikis

  devise_for :users

  resources :posts do
    member do
      get 'wiki'
      get 'milestones'
    end
    resources :comments
    resources :projects
    resources :milestones
  end

  get 'positions/newzealand' => 'positions#newzealand', :controller => "positions"
  get 'positions/international' => 'positions#international', :controller => "positions"
  get 'positions/netherlands' => 'positions#netherlands', :controller => "positions"
  get 'positions/unitedkingdom' => 'positions#unitedkingdom', :controller => "positions"
  get 'positions/livescreen' => 'positions#livescreen', :controller => "positions"
  get 'positions/dictionary' => 'positions#dictionary', :controller => "positions"

  resources :positions do
      member do
        get 'jobdescription'
        get 'personalprofile'
        get 'competencies'
        get 'editjobdescription'
        get 'editcompetencies'
        get 'editpersonalprofile'
      end
  end

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
  root :to => 'positions#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
