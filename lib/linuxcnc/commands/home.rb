module Linuxcnc
  module Commands
    class Home < Base
      def name
        "home"
      end

      def target_response_class
        Linuxcnc::Responses::Floats
      end

      def all!
        set -1
      end

    end
  end
end
