module Linuxcnc
  module Commands
    class Home < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[ack nak]
    end
  end
end
