module Linuxcnc
  module Commands
    class Machine < Base
      def name
        "machine"
      end

      def target_response_class
        Linuxcnc::Responses::OnOff
      end

    end
  end
end
