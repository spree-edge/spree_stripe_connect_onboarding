# **Spree Stripe Connect Onboarding**

## **About**

A Spree extension that provides ability to onboard stripe connect account for vendors. Its support both standard and express onboarding process. 
For stripe connect account info, refer [doc](https://stripe.com/docs/connect/accounts).

## **Key Features**

* This extension works with spree [multi vendor](https://github.com/spree-contrib/spree_multi_vendor) extension and it provides ability to onboard a stripe connect account for vendors.
* Ability to choose account type for onboarding.
* Shows the vendor stripe connect account details in the admin panel.

## **Demo**


https://user-images.githubusercontent.com/103247578/167868752-a98fdc80-f42d-46a8-b136-a8cad120f211.mp4



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

5. Screenshots
 <img width="1000px" src="https://user-images.githubusercontent.com/80692612/161536194-2c61a2d1-df8b-4d1e-afa9-350e1a0f5494.png">

## Contributing

[See corresponding guidelines](https://github.com/bluebash-spree-contrib/spree_stripe_connect_onboarding/blob/master/CONTRIBUTING.md)

Copyright (c) 2022 Spree Edge. released under the [New BSD License](https://github.com/spree-edge/spree_stripe_connect_onboarding/blob/master/LICENSE)

