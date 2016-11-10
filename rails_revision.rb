require "sinatra"
require_relative "lib/ssh"

get "/" do
  erb :index, :locals => {
    servers: [
      "server1",
      "server2"
    ]
  }
end
