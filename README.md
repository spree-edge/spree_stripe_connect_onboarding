# **Spree Stripe Connect Onboarding / Spree vendor onboarding**

## **About**

A Spree extension that provides ability to onboard stripe connect account for vendors. Its support both standard and express onboarding process. 
For stripe connect account info, refer [doc](https://stripe.com/docs/connect/accounts).

## **Key Features**

* This extension works with spree [multi vendor](https://github.com/spree-contrib/spree_multi_vendor) extension and it provides ability to onboard a stripe connect account for vendors.
* Admin has the ability to choose account type for onboarding vendors. By default "Standard" is the account type for each vendor.
* Shows the vendor stripe connect account details in the admin panel.

## **Demo**

https://user-images.githubusercontent.com/103247578/168750303-469fc973-ff9a-4085-906c-b4f41112a3e9.mp4


## **Installation**
1. Add this extension to your Gemfile with this line:

    ```ruby
    gem 'spree_stripe_connect_onboarding'
    ```

2. Install the gem using Bundler

    ```ruby
    bundle install
    ```

3. Copy & run migrations

    ```ruby
    bundle exec rails g spree_stripe_connect_onboarding:install
    ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

## Contributing

[See corresponding guidelines](https://github.com/bluebash-spree-contrib/spree_stripe_connect_onboarding/blob/master/CONTRIBUTING.md)

Copyright (c) 2022 Spree Edge. released under the [New BSD License](https://github.com/spree-edge/spree_stripe_connect_onboarding/blob/master/LICENSE)

