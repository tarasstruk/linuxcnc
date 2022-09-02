module Linuxcnc
  module Responses
    class OnOff < Base

      def self.pattern
        /on|off/mi
      end

      def use_converters
        [ :downcase, :symbilize ]
      end

      def on?
        value.include? :on
      end

      def off?
        value.include? :off
      end
    end
  end
end
