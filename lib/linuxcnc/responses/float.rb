# frozen_string_literal: true

module Linuxcnc
  module Responses
    class Float < Linuxcnc::Response
      self.use_converters = %i[downcase float]
      self.pattern = /\d+\.\d+/
    end
  end
end
