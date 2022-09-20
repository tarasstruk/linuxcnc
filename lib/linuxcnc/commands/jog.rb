# frozen_string_literal: true

module Linuxcnc
  module Commands
    # jog joint_number|axis_letter <speed>
    #
    # With set, jog the specified joint or axis at <speed>; sign of speed is direction.
    # If TELEOP_ENABLE is NO, use joint_number; If TELEOP_ENABLE is YES, use axis_letter.
    #
    class Jog < Linuxcnc::Command
      self.target = Linuxcnc::Responses::None
    end
  end
end
