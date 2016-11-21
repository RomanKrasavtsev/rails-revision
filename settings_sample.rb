USER = ""
PASSWORD = ""

PATH = "/var/www/current"

SERVERS = {
  App1: { ip: "192.168.1.1",  type: "capistrano" },
  App2: { ip: "192.168.1.2",  type: "capistrano", proxy: "192.168.1.1" },
  App3: { ip: "192.168.1.3",  type: "capistrano", proxy: "192.168.1.1" },
  App4: { ip: "192.168.1.4",  type: "capistrano", proxy: "192.168.1.1" }
}
