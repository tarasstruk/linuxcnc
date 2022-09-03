module Linuxcnc
  module Responses
    class None < Linuxcnc::Response

      def self.pattern
        /$/
      end

      def use_converters
        [ ]
      end

    end
  end
end
