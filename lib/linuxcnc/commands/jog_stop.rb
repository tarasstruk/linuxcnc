# frozen_string_literal: true

module Linuxcnc
  module Commands
    # jog_stop joint_number|axis_letter
    #
    # With set, stop any in-progress jog on the specified joint or axis.
    # If TELEOP_ENABLE is NO, use joint_number; If TELEOP_ENABLE is YES, use axis_letter.
    #
    class JogStop < Linuxcnc::Command
      self.target = Linuxcnc::Responses::None
    end
  end
end
