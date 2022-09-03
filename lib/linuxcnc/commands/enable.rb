module Linuxcnc
  module Commands
    class Enable < Linuxcnc::Command
      self.target = Linuxcnc::Responses::OnOff

      DEFAULT_PASSWORD = "EMCTOO".freeze


      def set(params=[DEFAULT_PASSWORD])
        super
      end

    end
  end
end
