# Store App (Web)

Store App is a Ruby on Rails web application for managing products, customers, and orders. It provides a simple storefront interface and JSON APIs for managing inventory and processing orders.

Key features

- Product catalog and inventory management
- Customer and order management
- Simple admin UI built with Hotwire (Turbo + Stimulus)
- JSON API endpoints for integration

Tech stack

- Ruby on Rails ~> 8.1
- SQLite3 (development & test)
- Propshaft, Importmap, Turbo, Stimulus
- Puma web server

Quick start (development)

1. Install Ruby (matching your rbenv/rvm setup) and Bundler
2. bundle install
3. bin/rails db:create db:migrate db:seed
4. bin/rails server
5. Visit http://localhost:3000

Running tests

- bundle exec rails test

Deployment

- Designed to be containerized (Docker); Kamal is included for deployment helpers.

Notes

- Uses importmap (no Node.js build step required for basic usage)
- See Gemfile for full dependency list
