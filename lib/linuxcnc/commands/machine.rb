# frozen_string_literal: true

module Linuxcnc
  module Commands
    # machine {on|off}
    #
    # With get, ignores any parameters and returns the current machine power setting as "on" or "off".
    # With set, sets the machine on or off as specified.
    #
    class Machine < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
