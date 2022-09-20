# frozen_string_literal: true

module Linuxcnc
  module Commands
    # mode {manual|auto|mdi}
    #
    # With get, ignores any parameters and returns the current machine mode.
    # With set, sets the machine mode as specified.
    #
    class Mode < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[manual auto mdi]
    end
  end
end
