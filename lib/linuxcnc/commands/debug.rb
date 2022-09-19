# frozen_string_literal: true

# debug <value>
#
# With get, any parameter is ignored and the current integer value of EMC_DEBUG is returned.
# Note that the value of EMC_DEBUG returned is the from the UI’s ini file, which may be different than emc’s ini file.
# With set, sends a command to the EMC to set the new debug level, and sets the EMC_DEBUG global here to the same value.
# This will make the two values the same, since they really ought to be the same.
module Linuxcnc
  module Commands
    class Debug < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Int
    end
  end
end
