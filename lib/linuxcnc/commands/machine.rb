module Linuxcnc
  module Commands
    class Machine < Linuxcnc::Command

      self.target = Linuxcnc::Responses::OnOff

    end
  end
end
