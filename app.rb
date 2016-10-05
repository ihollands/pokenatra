require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'


get '/' do
  @pokemon = Pokemon.all
  erb :index
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect '/'
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect '/'
end

get '/pokemon/add_new' do
  erb :add
end

post '/pokemon/add_new' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/"
end


get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :show
end
