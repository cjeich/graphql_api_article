# GraphQL Performance Testing

This is a repo to accompany the article found on my blog:
http://chris-eich.com/graphql-performance-testing-1

# Installation
this repo is intended to house projects from several frameworks

## Rails Installation

### Prerequisites
* you will need ruby 2.6.5 installed
* have the bundler and rails gems installed
* You will also need postgres setup to work with ruby

The article itself goes through creation of the rails api, but if you want to see the final result:

``` bash
cd rails_api

# install rails gems
bundle install

# create databases and sample data
rails db:create db:migrate
