# **Spree Stripe Connect Onboarding**
Create stripe connect account on stripe portal directly through spree.

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

If you'd like to contribute, please take a look at the
[instructions](CONTRIBUTING.md) for installing dependencies and crafting a good
pull request.


Copyright (c) 2021 bluebash-spree-contrib, released under the New BSD License
