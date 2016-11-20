require "sinatra"
require_relative "lib/ssh"
require_relative "lib/capistrano"
require_relative "lib/git"
require_relative  "settings"

get "/" do
  @revisions = []
  SERVERS.each do |server|
    host = server[0].to_s
    proxy = server[1][:proxy] ? server[1][:proxy] : nil
    ssh = Ssh.new(host, server[1][:ip], proxy, USER, PASSWORD)
    utility = (server[1][:type] == "capistrano") ? Capistrano.new(PATH) : Git.new(PATH)
    @revisions << {server: host, revision: ssh.exec(utility.get_revision)}
  end

  erb :index
end
