module Linuxcnc
  class Machine

    attr_reader :client, :options

    COMMANDS_PATH = File.expand_path(File.join(File.dirname(__FILE__), "commands"))
    print COMMANDS_PATH
    COMMAND_NAMES = Dir.glob("*.rb", base: COMMANDS_PATH).map{|file| file.chomp(".rb") }.reject{|x| x=="base"}
    require_relative "commands/base"

    COMMAND_NAMES.each do |command|
      require_relative "commands/#{command}"
      define_method command.to_sym do ||
        (Linuxcnc::Commands.const_get command.camelize).new(client: client)
      end
    end


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
