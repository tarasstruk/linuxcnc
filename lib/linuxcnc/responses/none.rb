# frozen_string_literal: true

module Linuxcnc
  module Responses
    # this Response contains no significant values and the result is usually discarded
    #
    class None < Linuxcnc::Response
      self.pattern = /$/

      def use_converters
        []
      end
    end
  end
end
