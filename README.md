# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Features

Users can add create accounts and login/logout. When logged in they have the ability to view all the products and individual product pages. Users can also add items to a cart that keeps track of what was added and then using Stripe integration checkout and pay for their products.

## Final Product

!["Home Page"](https://github.com/oMnotopia/jungle-rails/blob/master/docs/Home_Page.png?raw=true)
!["Products"](https://github.com/oMnotopia/jungle-rails/blob/master/docs/Products.png?raw=true)
!["Product"](https://github.com/oMnotopia/jungle-rails/blob/master/docs/Product.png?raw=true)
!["Checkout Cart"](https://github.com/oMnotopia/jungle-rails/blob/master/docs/Checkout_Cart.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
