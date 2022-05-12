Spree::Core::Engine.add_routes do
  # Add your extension routes here
  Spree::Core::Engine.routes.draw do
    namespace :admin do
      resources :vendors do
        member do
          get :stripe_connect_url
          get :account_information
          get :stripe_account_type
        end
      end

      resources :vendor_settings do
        get :onboarding, on: :member
        get :account_information, on: :member
        put :generate_stripe_account, on: :collection
      end
    end
  end
end
