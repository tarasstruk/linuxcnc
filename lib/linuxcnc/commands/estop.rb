module Linuxcnc
  module Commands
    class Estop < Base
      def name
        "estop"
      end

      def target_response_class
        Linuxcnc::Responses::OnOff
      end

    end
  end
end
