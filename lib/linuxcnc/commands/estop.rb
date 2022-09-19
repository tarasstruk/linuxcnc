# frozen_string_literal: true

module Linuxcnc
  module Commands
    class Estop < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[on off]
    end
  end
end
