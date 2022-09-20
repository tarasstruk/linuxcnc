# frozen_string_literal: true

module Linuxcnc
  module Commands
    # hello <password> <client> <version>
    #
    # <password> must match linuxcncrsh’s connect password, or "EMC" if no --connectpw was supplied.
    # The three arguments may not contain whitespace. If a valid password was entered the server will respond with:
    # HELLO ACK <ServerName> <ServerVersion>
    # If an invalid password or any other syntax error occurs then the server responds with:
    # HELLO NAK
    #
    class Hello < Linuxcnc::Command
      DEFAULT_PASSWORD = "EMC"
      CLIENT_ID = "Ruby #{::Linuxcnc::VERSION}"

      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[ack nak]

      private

      def build_get(params)
        ["hello", params.first || DEFAULT_PASSWORD, CLIENT_ID].join(" ")
      end
    end
  end
end
