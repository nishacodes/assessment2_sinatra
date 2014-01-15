require 'bundler'
Bundler.require
require 'sinatra'
require 'sinatra/activerecord'
require './lib/spacecat.rb'

set :database, "sqlite3:///spacecats.db"

# class App < Sinatra::Application
  get '/spacecats' do
    @spacecats = Spacecat.all
    erb :index
  end

  get '/spacecats/new' do
    @spacecat = Spacecat.new
    erb :new
  end

  post '/spacecats' do
    @spacecat = Spacecat.new(params[:spacecat])
    if @spacecat.save
      redirect '/spacecats/' + @spacecat.id.to_s
    else
      erb :new
    end
  end

  get '/spacecats/edit/:id' do
    @spacecat = Spacecat.find(params[:id])
    erb :edit
  end

  put '/spacecats/:id' do
    @spacecat = Spacecat.find(params[:id])
    if @spacecat.update(params[:spacecat])
      redirect '/spacecats/' + params[:id]
    else
      erb :edit  
    end
  end

  get '/spacecats/delete/:id' do
    @spacecat = Spacecat.find(params[:id])
    erb :delete
  end

  delete '/spacecats/:id' do
    Spacecat.find(params[:id]).destroy
    redirect '/spacecats'  
  end

  get '/spacecats/:id' do
    @spacecat = Spacecat.find(params[:id])
    erb :show
  end
# end

