# frozen_string_literal: true

module Linuxcnc
  module Responses
    # this Response contains emumerable values
    #
    class Enum < Linuxcnc::Response
      self.use_converters = %i[downcase symbilize]

      def pattern
        Regexp.new(variants.join("|"), Regexp::IGNORECASE | Regexp::MULTILINE)
      end
    end
  end
end
