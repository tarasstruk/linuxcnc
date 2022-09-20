# frozen_string_literal: true

module Linuxcnc
  module Responses
    # this Response contains emumerable floating-point numbers
    #
    class Float < Linuxcnc::Response
      self.use_converters = %i[downcase float]
      self.pattern = /\d+\.\d+/
    end
  end
end
