require "net/ssh"

class Ssh
  def initialize host, ip, user, password
    @host = host
    @ip = ip
    @user = user
    @password = password 
  end

  def exec command
    Net::SSH:.start(@ip, @user, @passwrod) do |ssh|
      ssh.exec!(command) 
    end
  end
end
