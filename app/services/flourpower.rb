class FlourPower
	include HTTParty
	base_uri "https://flour-power.herokuapp.com"

	def initialize
		@auth = {
			"auth-token" => ENV["FLOURPOWER_API_KEY"]
		}
	end

	def search(query)
		FlourPower.get("/api/recipes/search?query=#{query}", headers: @auth)
	end

	def select(id)
    FlourPower.get("/api/recipes/#{id}", headers: @auth)
  end

end

## api = FlourPower.new
## api.search()