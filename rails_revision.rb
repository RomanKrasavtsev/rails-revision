require "sinatra"
require_relative "lib/ssh"

get "/" do
  erb :index
end
