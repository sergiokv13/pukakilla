Puka::Application.routes.draw do
  get "principal/index"
  get "/galeria-de-fotos" => "principal#prueba"
  get "/hospedaje" => "principal#hotel"
  get "/instalaciones-y-servicios" => "principal#instalaciones"
  get "/ubicacion" => "principal#ubicacion"
  get "/nosotros" => "principal#nosotros"
  get "/turismo-cochabamba" => "principal#turismo"
  get "/comentarios" => "principal#comentarios"
  get "/las-habitaciones" => "principal#lasHabitaciones"
  get "/mail-telefono" => "principal#contacto"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get "/missing"=> "principal#missing"
  post '/create' => 'principal#create'

  # You can have the root of your site routed with "root"
  root 'principal#index'

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
  get "*missing"=> redirect("/missing")
end
