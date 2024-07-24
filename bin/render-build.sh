#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies
bundle install

# Run database migrations
bundle exec rails db:migrate

# Precompile assets
bundle exec rails assets:precompile

# Clean assets (optional, but good practice to ensure old assets are removed)
bundle exec rails assets:clean
