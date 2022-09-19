# frozen_string_literal: true

module Linuxcnc
  module Commands
    class Machine < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
