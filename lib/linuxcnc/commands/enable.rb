# enable {<passwd>|off}
#
# The session’s enable state indicates whether the current connection is enabled to perform control functions.
# With get, any parameter is ignored, and the current enable state is returned. With set and a valid password matching
# linuxcncrsh’s --enablepw (EMCTOO if not specified), the current connection is enabled for control functions.
# "OFF" may not be used as a password and disables control functions for this connection.
#
module Linuxcnc
  module Commands
    class Enable < Linuxcnc::Command
      self.target = Linuxcnc::Responses::OnOff

      DEFAULT_PASSWORD = "EMCTOO".freeze


      def set(params=[DEFAULT_PASSWORD])
        super
      end

    end
  end
end
