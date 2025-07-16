require "sinatra"
require "sinatra/reloader"
require "securerandom"


get("/") do

def secure_random_letter
  SecureRandom.alphanumeric(10).tap do |char|
    char =~ /[A-Za-z0-9]/ or return secure_random_letter
  end
end

erb(:password_generator)
end
