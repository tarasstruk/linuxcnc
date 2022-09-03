module Linuxcnc
  module Responses
    class Mode < Linuxcnc::Response

      def self.pattern
        /manual|auto|mdi/mi
      end

      def use_converters
        [ :downcase, :symbilize ]
      end

      def mdi?
        value == :mdi
      end

      def manual?
        value == :manual
      end

      def auto?
        value == :auto
      end
    end
  end
end
