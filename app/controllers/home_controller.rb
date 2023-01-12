class HomeController < ApplicationController
  def index
    @all = JSON.parse(Faraday.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0').body)
    
    poke = Faraday.get("https://pokeapi.co/api/v2/pokemon/#{rand(@all['count'])}")
    begin
      @pokemon = JSON.parse(poke.body)
    rescue 
      redirect_to root_path
    end
  end
end