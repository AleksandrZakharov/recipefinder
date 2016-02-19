require 'httparty'
ENV["FOOD2FORK_KEY"] = 'b73e80acf4e1e0dd17d6daa82605bf22'
class Recipe
  include HTTParty
  
  default_params key: ENV["FOOD2FORK_KEY"]
  hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"
  base_uri "http://#{hostport}/api"
 
  format :json

  key_value = ENV["FOOD2FORK_KEY"]




  def self.for (keyword)
    get("/search", query: {q: keyword})["recipes"]
  end
end