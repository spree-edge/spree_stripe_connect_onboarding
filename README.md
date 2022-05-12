# **Spree Stripe Connect Onboarding**

## **About**

A Spree extension that provides ability to onboard stripe connect account for vendors. Its support both standard and express onboarding process. 
For stripe connect account info, refer [doc](https://stripe.com/docs/connect/accounts).

## **Key Features**

* This extension works with spree [multi vendor](https://github.com/spree-contrib/spree_multi_vendor) extension and it provides ability to onboard a stripe connect account for vendors.
* Ability to choose account type for onboarding.
* Shows the vendor stripe connect account details in the admin panel.

## **Demo**

https://user-images.githubusercontent.com/103247578/168088216-f09d8b05-a5cd-456c-bba4-e623c95fe904.mp4



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

