# frozen_string_literal: true

module Linuxcnc
  module Commands
    class Jog < Linuxcnc::Command
      self.target = Linuxcnc::Responses::None
    end
  end
end
