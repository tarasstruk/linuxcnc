# frozen_string_literal: true

module Linuxcnc
  class Response
    class_attribute :pattern
    class_attribute :use_converters
    self.use_converters = []

    attr_reader :value, :error, :variants

    CONVERTERS = {
      downcase: ->(val) { val.to_s.downcase },
      float: ->(val) { val.to_s.to_f },
      integer: ->(val) { val.to_s.to_i },
      symbilize: ->(val) { val.to_s.to_sym }
    }.freeze

    def initialize(variants = [])
      @variants = variants
      @value = []
    end

    def parse(server_raw_response)
      @value = server_raw_response.scan(pattern).map { |val| convert_raw_value(val) }
    end

    def converters
      CONVERTERS.fetch_values(*use_converters)
    end

    def convert_raw_value(val)
      result = val.clone
      converters.each do |converter|
        result = converter.call(result)
      end
      result
    end
  end
end
