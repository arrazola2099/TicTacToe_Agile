require 'sinatra'
require './lib/Tablero'

get '/' do
	@@tb = Tablero.new
    erb :index
end

get '/elegir/:celda' do |celda|
  
	@@tb.e_cell(celda)
    erb :index
end
