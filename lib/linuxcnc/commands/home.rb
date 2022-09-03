module Linuxcnc
  module Commands
    class Home < Linuxcnc::Command

      self.target = Linuxcnc::Responses::AckNak
    end
  end
end
