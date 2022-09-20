#!/usr/bin/env ruby
# frozen_string_literal: true

require "rubygems"
require "bundler/setup"

Bundler.require(:default, :development)

# client = Linuxcnc::Client.new # (host: '192.168.2.140', port: 5007)

m = Linuxcnc::Machine.new
m.connect
m.say_hello
