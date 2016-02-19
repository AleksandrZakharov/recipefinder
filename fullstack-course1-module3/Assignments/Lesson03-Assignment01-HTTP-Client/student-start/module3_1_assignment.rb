require 'httparty'
ENV["FOOD2FORK_KEY"]="b73e80acf4e1e0dd17d6daa82605bf22"
class Recipe
	include HTTParty
	base_uri "http://food2fork.com/api"
  	default_params key: ENV["FOOD2FORK_KEY"]
  	format :json

  	def self.for (keyword)
    	get("/search", query: {q: keyword})["recipes"]
 	end
end
