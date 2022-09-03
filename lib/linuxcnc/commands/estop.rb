module Linuxcnc
  module Commands
    class Estop < Linuxcnc::Command

      self.target = Linuxcnc::Responses::OnOff

    end
  end
end
