module Linuxcnc
  module Responses
    class Floats < Base

      def self.pattern
        /\d+\.\d+/mi
      end

      def use_converters
        [ :downcase, :float ]
      end

    end
  end
end
