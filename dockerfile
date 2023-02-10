# Create a Jekyll container form a Ruby Alpine image

# At a minimum, use Ruby 2.5 or later
FROM ruby:3.0-alpine3.16

# Add Jekyll dependencies to Alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll
