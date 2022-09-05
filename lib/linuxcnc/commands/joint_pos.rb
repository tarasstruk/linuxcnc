module Linuxcnc
  module Commands
    class JointPos < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Float


    end
  end
end
