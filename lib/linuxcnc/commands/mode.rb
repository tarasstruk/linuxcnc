# frozen_string_literal: true

module Linuxcnc
  module Commands
    class Mode < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[manual auto mdi]
    end
  end
end
