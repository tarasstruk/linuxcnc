module Linuxcnc
  module Commands
    class Mode < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Mode

    end
  end
end
