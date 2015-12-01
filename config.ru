# require './app'     IT IS EMPTY NOW. BYE BYE.
require 'sinatra/base'

# ApplicationController should ALWAYS be loaded first.
require './controllers/application'
require './controllers/recommendations'

require './models/ClassRecs'

# run Sinatra::Application


map('/') { run RecommendationsController }
# map('/users') { run UsersController }  < - will learn this soon
