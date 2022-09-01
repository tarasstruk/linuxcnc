module Linuxcnc
  module Commands
    class JointPos < Base
      def name
        "joint_pos"
      end

      def target_response_class
        Linuxcnc::Responses::Floats
      end

    end
  end
end
