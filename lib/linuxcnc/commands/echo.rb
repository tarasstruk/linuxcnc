module Linuxcnc
  module Commands
    class Echo < Linuxcnc::Command

      self.target = Linuxcnc::Responses::OnOff

    end
  end
end
