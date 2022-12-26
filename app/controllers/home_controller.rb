class HomeController < ApplicationController
  def index
    @all = JSON.parse(Faraday.get('https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0').body)
    
    poke = Faraday.get("https://pokeapi.co/api/v2/pokemon/#{rand(@all['count'])}")
    @pokemon = JSON.parse(poke.body)
  end
end