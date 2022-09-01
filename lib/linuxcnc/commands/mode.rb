module Linuxcnc
  module Commands
    class Mode < Base
      def name
        "mode"
      end

      def target_response_class
        Linuxcnc::Responses::Mode
      end

      def mdi!
        set "mdi"
      end

      def auto!
        set "mdi"
      end

      def manual!
        set "mdi"
      end
    end
  end
end
