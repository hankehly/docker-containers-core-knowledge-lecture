FROM ruby:3.2.0
WORKDIR /app
COPY scripts/hello_world.rb .
CMD ruby hello_world.rb
