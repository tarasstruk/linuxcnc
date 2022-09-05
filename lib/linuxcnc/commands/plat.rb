# plat
#
# With get, returns the string "Linux".
module Linuxcnc
  module Commands
    class Plat < Linuxcnc::Command

      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[linux]

    end
  end
end
