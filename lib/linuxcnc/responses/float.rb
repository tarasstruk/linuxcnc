module Linuxcnc
  module Responses
    class Float < Linuxcnc::Response

      self.use_converters = [ :downcase, :float ]
      self.pattern = /\d+\.\d+/

    end
  end
end
