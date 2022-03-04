Spree::Core::Engine.add_routes do
  # Add your extension routes here
  Spree::Core::Engine.routes.draw do
    namespace :admin do
      resources :vendors do
        member do
          get :stripe_connect_url
        end
      end
    end
  end
end
