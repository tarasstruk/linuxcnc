module Linuxcnc
  module Responses
    class Int < Linuxcnc::Response

      def self.pattern
        /\d+/m
      end

      def use_converters
        [ :downcase, :integer ]
      end

    end
  end
end
