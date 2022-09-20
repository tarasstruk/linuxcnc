# frozen_string_literal: true

module Linuxcnc
  module Commands
    # home {0|1|2|...} | -1
    #
    # With set, homes the indicated joint or if -1, Home All joints
    #
    class Home < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[ack nak]
    end
  end
end
