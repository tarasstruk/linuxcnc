module Linuxcnc
  module Commands
    class JointPos < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Floats


    end
  end
end
