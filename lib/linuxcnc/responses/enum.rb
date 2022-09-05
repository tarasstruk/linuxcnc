module Linuxcnc
  module Responses
    class Enum < Linuxcnc::Response

      self.use_converters = [ :downcase, :symbilize ]

      def pattern
        Regexp.new(variants.join("|"), Regexp::IGNORECASE | Regexp::MULTILINE)
      end
    end
  end
end
