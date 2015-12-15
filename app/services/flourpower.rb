class Flourpower
	include HTTParty
	base_uri "https://flour-power.herokuapp.com"

	def initialize
		@auth = {
			"auth-token" => ENV["FLOURPOWER_API_KEY"]
		}
	end

	def search(query)
		response = Flourpower.get("/api/recipes/search?query=#{query}", headers: @auth)
		JSON.parse(response.body)
	end

	def select(id)
    Flourpower.get("/api/recipes/#{id}", headers: @auth)
  end

end

## api = FlourPower.new
## api.search()