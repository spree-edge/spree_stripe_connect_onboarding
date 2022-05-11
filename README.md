# **Spree Stripe Connect Onboarding**

## **About**

A Spree extension that provides ability to onboard stripe connect account for vendors.

## **Key Features**

* It includes ability to onbaord a stripe connect account for vendors from admin panel.
* Ability to choose account type for onboarding
* Shows the vendor stripe connect account details in the admin panel.

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

