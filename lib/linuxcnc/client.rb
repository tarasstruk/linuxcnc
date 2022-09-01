module Linuxcnc
  class Client
    def initialize(host: (ENV["LINUXCNC_HOST"] || "localhost"), port: (ENV["LINUXCNC_PORT"] || 5007))
      @host = host
      @port = port
    end

    def connection
      @connection ||= Net::Telnet::new(
        "Host"       => @host,           # default: "localhost"
        "Port"       => @port.to_i,      # default: 23
        "Telnetmode" => false,           # default: true
        "Output_log" => "output_log",    # default: nil (no output)
        "Dump_log"   => "dump_log",      # default: nil (no output)
        "Timeout"    => 2,               # default: 10
      # "Binmode"    => false,         # default: false
      # "Prompt"     => /[$%#>] \z/n,  # default: /[$%#>] \z/n
      # if ignore timeout then set "Timeout" to false.
      # "Waittime"   => 0,             # default: 0
      # "Proxy"      => proxy          # default: nil
        )
    end
  end
end
