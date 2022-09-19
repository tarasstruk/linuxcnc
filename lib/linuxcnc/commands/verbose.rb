# frozen_string_literal: true

# verbose {on|off}
#
# With get, any on/off parameter is ignored and the current verbose state is returned.
# With set, sets the verbose state as specified.
# When verbose mode is on, all set commands return positive acknowledgement in the form SET <COMMAND> ACK,
# and text error messages will be issued (FIXME: I don’t know what this means).
# The verbose state is local to each connection, and starts out OFF on new connections.
module Linuxcnc
  module Commands
    class Verbose < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
