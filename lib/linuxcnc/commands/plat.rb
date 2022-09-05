# plat
#
# With get, returns the string "Linux".
module Linuxcnc
  module Commands
    class Plat < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Plat

    end
  end
end
