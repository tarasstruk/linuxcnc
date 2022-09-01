module Linuxcnc
  module Responses
    class AckNak < Base

      def self.pattern
        /ack|nak/mi
      end

      def use_converters
        [ :downcase, :symbilize ]
      end

      def ack?
        value == :ack
      end

      def nak?
        value == :nak
      end
    end
  end
end