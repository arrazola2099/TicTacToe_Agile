require 'sinatra'
require './lib/Tablero'

get '/' do
	@tb = Tablero.new
    erb :index
end
