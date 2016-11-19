require "net/ssh"

class Ssh
  def initialize(host, ip, proxy, user, password)
    @host = host
    @ip = ip
    @proxy = proxy
    @user = user
    @password = password
  end

  def exec(command)
    Net::SSH.start(@proxy ? @proxy : @ip, @user, password: @password) do |ssh|
      @proxy ? ssh.exec!("ssh user@#{@ip} '#{command}'") : ssh.exec!(command)
    end
  end
end
