module Linuxcnc
  module Responses
    class Plat < Linuxcnc::Response

      def self.pattern
        /Linux/mi
      end

      def use_converters
        [ ]
      end
    end
  end
end
