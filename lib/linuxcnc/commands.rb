module Linuxcnc
  module Commands

    COMMANDS_PATH = File.expand_path(File.join(File.dirname(__FILE__), "commands"))
    COMMAND_NAMES = Dir.glob("*.rb", base: COMMANDS_PATH).map{|file| file.chomp(".rb") }
    require_relative "commands/#{COMMAND_NAMES.delete 'base'}"
    COMMAND_NAMES.freeze

    COMMAND_NAMES.each do |command|
      require_relative "commands/#{command}"
      define_method command.to_sym do ||
        (Linuxcnc::Commands.const_get command.camelize).new(client: client)
      end
    end

  end
end
