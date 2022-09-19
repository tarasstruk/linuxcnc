# frozen_string_literal: true

module Linuxcnc
  module Responses
    class None < Linuxcnc::Response
      self.pattern = /$/

      def use_converters
        []
      end
    end
  end
end
