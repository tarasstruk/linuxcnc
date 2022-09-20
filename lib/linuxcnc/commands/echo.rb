# frozen_string_literal: true

module Linuxcnc
  module Commands
    # echo {on|off}
    #
    # With get, any on/off parameter is ignored and the current echo state is returned.
    # With set, sets the echo state as specified. Echo defaults to on when the connection is first established.
    # When echo is on, all commands will be echoed upon receipt. This state is local to each connection.
    #
    class Echo < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
