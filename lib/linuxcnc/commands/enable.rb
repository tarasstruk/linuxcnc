module Linuxcnc
  module Commands
    class Enable < Base
      def name
        "enable"
      end

      def target_response_class
        Linuxcnc::Responses::OnOff
      end
    end
  end
end
