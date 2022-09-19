# frozen_string_literal: true

module Linuxcnc
  module Responses
    class Int < Linuxcnc::Response
      self.use_converters = %i[downcase integer]
      self.pattern = /\d+/
    end
  end
end
