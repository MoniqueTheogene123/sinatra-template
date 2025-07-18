require "sinatra"
require "sinatra/reloader"
require "securerandom"
require "http"

get("/") do
@raw_response = HTTP.get("https://api.openbrewerydb.org/v1/breweries/random")

@string_response = @raw_response.to_s

@parsed_response = JSON.parse(@string_response)



# def secure_random_letter
#   SecureRandom.alphanumeric(10).tap do |char|
#     char =~ /[A-Za-z0-9]/ or return secure_random_letter
#   end
# end

erb(:password_generator)
end
