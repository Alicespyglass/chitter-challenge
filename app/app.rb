ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class NomDiaries < Sinatra::Base

  get '/' do
    redirect 'noms'
  end

  get '/noms' do
    @noms = Nom.all
    erb :'/noms/index'
  end

  get '/noms/new' do
    erb :'noms/new'
  end

  post '/noms' do
    nom = Nom.new(nom: params[:nom])
    nom.save
    redirect to('/noms')
  end

end
