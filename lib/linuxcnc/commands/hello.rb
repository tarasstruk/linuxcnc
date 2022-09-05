module Linuxcnc
  module Commands
    class Hello < Linuxcnc::Command
      DEFAULT_PASSWORD = "EMC".freeze
      CLIENT_ID = "Ruby #{::Linuxcnc::VERSION}".freeze

      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[ack nak]

      private

      def build_get(params)
        ["hello", params.first || DEFAULT_PASSWORD, CLIENT_ID].join(" ")
      end
    end
  end
end
