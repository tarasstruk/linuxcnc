module Linuxcnc
  module Commands
    class Hello < Linuxcnc::Command
      DEFAULT_PASSWORD = "EMC".freeze
      CLIENT_ID = "Ruby #{::Linuxcnc::VERSION}".freeze

      self.target = Linuxcnc::Responses::AckNak

      private

      def build_get(params)
        ["hello", params.first || DEFAULT_PASSWORD, CLIENT_ID].join(" ")
      end
    end
  end
end
