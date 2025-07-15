require "sinatra"
require "sinatra/reloader"


get("/") do
erb(:password_generator)
end
