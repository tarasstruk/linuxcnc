module Linuxcnc
  class Machine

    attr_reader :client, :options
    include Commands


    def initialize(client: Client.new, options: { })
      @client = client
      @options = options
      binding.pry
    end

    def num_joints
      options.fetch(:num_joints, 3)
    end

  end
end
