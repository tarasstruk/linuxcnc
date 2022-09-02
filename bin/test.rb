require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, :development)

client = Linuxcnc::Client.new #(host: '192.168.2.140', port: 5007)

# machine = Linuxcnc::Commands::Machine.new(client: client)
#
# jpos = Linuxcnc::Commands::JointPos.new(client: client)
#
# home = Linuxcnc::Commands::Home.new(client: client)
#
# estop = Linuxcnc::Commands::Estop.new(client: client)
#
# mode = Linuxcnc::Commands::Mode.new(client: client)
#
# mdi = Linuxcnc::Commands::Mdi.new(client: client)

# hs = Linuxcnc::Handshake.new(client: client)

m = Linuxcnc::Machine.new

binding.pry
