class WelcomeController < ApplicationController
  require 'net/http'

  def index
  	uri = URI("http://indicadoresdeldia.cl/webservice/indicadores.json")
	http = Net::HTTP.get(uri)
	@parsed = ActiveSupport::JSON.decode(http)
	
	
  end
end
