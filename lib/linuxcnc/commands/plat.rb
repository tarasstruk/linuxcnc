# frozen_string_literal: true

module Linuxcnc
  module Commands
    # plat
    #
    # With get, returns the string "Linux".
    #
    class Plat < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Enum
      self.response_variants = %i[linux]
    end
  end
end
