module Linuxcnc
  class Handshake
    HELLO_PASSWORD = "EMC"
    ENABLE_PASS = "EMCTOO"
    CLIENT_VERSION = ::Linuxcnc::VERSION
    CLIENT_NAME = "Ruby"

    def initialize(client:, options: { })
      @conn = client.connection
    end

    def perform
      lines = %{
        hello #{HELLO_PASSWORD} #{CLIENT_NAME} #{CLIENT_VERSION}
        set enable #{ENABLE_PASS}
        get enable
      }
      @conn.cmd("Match" => /enable on/mi, "String" => lines)
    end

  end
end
