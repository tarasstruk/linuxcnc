# frozen_string_literal: true

module Linuxcnc
  class Client
    attr_reader :connection

    COMMIT_SEQUENCE = "\nget plat\n"
    COMMIT_EXPECT = /^plat linux/mi.freeze

    READ_TIMEOUT = 10

    def initialize(host: (ENV["LINUXCNC_HOST"] || "localhost"), port: (ENV["LINUXCNC_PORT"] || 5007))
      @host = host
      @port = port
    end

    def disconnect
      connection.try :write, "quit"
      connection.try :close
      @connection = nil
    end

    def write(string)
      connection.cmd("String" => string + COMMIT_SEQUENCE, "Match" => COMMIT_EXPECT)
    end

    def read(string, pattern)
      connection.cmd("String" => string, "Match" => pattern)
    end

    def establish_connection
      disconnect if connection.present?
      @connection = Net::Telnet.new(
        "Host" => @host,
        "Port" => @port.to_i,
        "Telnetmode" => false,
        "Output_log" => "tmp/output_log",
        "Dump_log" => "tmp/dump_log",
        "Timeout" => READ_TIMEOUT
      )
    end
  end
end
