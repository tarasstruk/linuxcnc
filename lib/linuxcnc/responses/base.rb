module Linuxcnc
  module Responses
    class Base
      attr_reader :value, :error

      CONVERTERS = {
        downcase: -> (val) { val.to_s.downcase },
        float: -> (val) { val.to_s.to_f },
        integer: -> (val) { val.to_s.to_i },
        symbilize: -> (val) { val.to_s.to_sym },
      }

      def initialize(raw_values)
        @value = raw_values.scan(pattern).map{|val| convert_raw_value(val) }
      end

      def pattern
        self.class.pattern
      end

      def converters
        CONVERTERS.fetch_values(*use_converters)
      end

      def use_converters
        [ :downcase ]
      end

      def convert_raw_value(val)
        result = val.clone
        converters.each do |converter|
          result = converter.call(result)
        end
        result
      end

      def valid?
        @error.nil?
      end

      def invalid?
        !valid?
      end

      def blank?
        @value.nil? || @value.empty?
      end

      def present?
        !blank?
      end
    end
  end
end
