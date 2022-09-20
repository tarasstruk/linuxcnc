# frozen_string_literal: true

module Linuxcnc
  module Commands
    # mdi <string>
    #
    # With set, sends <string> as an MDI command.
    #
    class Mdi < Linuxcnc::Command
      self.target = Linuxcnc::Responses::None
    end
  end
end
