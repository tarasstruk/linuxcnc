# frozen_string_literal: true

module Linuxcnc
  module Commands
    # estop {on|off}
    #
    # With get, ignores any parameters and returns the current estop setting as "on" or "off".
    # With set, sets the estop as specified. Estop "on" means the machine is in the estop state and won’t run.
    #
    class Estop < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
