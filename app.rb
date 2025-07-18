require "sinatra"
require "sinatra/reloader"
require "securerandom"
require "http"

get("/") do

  # Fetch random brewery data
@string_response = HTTP.get("https://api.openbrewerydb.org/v1/breweries/random")
@parsed_response = JSON.parse(@string_response)

  # Extract brewery deetails, api returns an array with one brewery
  brewery = @parsed_response.first || {} #fallback to empty hash if nil
  @brewery_name = brewery["name"] || "Actually, my bad, meet me later"
  @brewery_type = brewery["brewery_type"] ||  "No brew type"
  @brewery_state = brewery["state"] || "Sorry, no web page"


  #Password generator logic
def secure_random_letter
  SecureRandom.alphanumeric(10).tap do |char|
    char =~ /[A-Za-z0-9]/ or return secure_random_letter
  end
end

erb(:password_generator)
end
