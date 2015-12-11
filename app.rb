require 'sinatra'
require './lib/Tablero'

get '/' do
	@@tb = Tablero.new
    erb :index
end

get '/elegir/:celda' do |celda|
	@@tb.e_cell(celda)
	@@tb.verify_winner
    erb :index
end
