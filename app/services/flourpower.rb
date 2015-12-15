class FlourPower
	include HTTParty
	base_uri "https://flour-power.herokuapp.com"

	def initialize
		@auth = {
			"auth-token" => ENV["FLOURPOWER_API_KEY"]
		}
	end

	def self.search(query)
		search = FlourPower.get("/api/recipes/search?query=#{query}", headers: @auth)
	end

	def self.select(id)
    recipe = FlourPower.get("/api/recipes/#{id}", headers: @auth)
  end

end