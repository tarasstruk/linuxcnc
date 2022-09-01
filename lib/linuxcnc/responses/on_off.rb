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
        values.include? :on
      end

      def off?
        values.include? :off
      end
    end
  end
end
