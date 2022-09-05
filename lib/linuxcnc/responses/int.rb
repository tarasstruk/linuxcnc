module Linuxcnc
  module Responses
    class Int < Linuxcnc::Response

      self.use_converters = [ :downcase, :integer ]
      self.pattern = /\d+/

    end
  end
end
