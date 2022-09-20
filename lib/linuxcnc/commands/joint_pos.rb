# frozen_string_literal: true

module Linuxcnc
  module Commands
    # joint_pos [{0|1|...}]
    #
    # With get, returns the specified joint’s actual position in absolute coordinates, excluding tool length offset.
    # If no joint is specified, returns all joints’ actual absolute position.
    #
    class JointPos < Linuxcnc::Command
      self.target = Linuxcnc::Responses::Float
    end
  end
end
