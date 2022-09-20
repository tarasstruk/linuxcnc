# frozen_string_literal: true

module Linuxcnc
  # Commands look-up and classes dependencies management
  module Commands
    require_relative "response"
    RESPONSES_PATH = File.expand_path(File.join(File.dirname(__FILE__), "responses")).freeze
    Dir.glob("*.rb", base: RESPONSES_PATH).each do |file|
      require_relative "responses/#{file}"
    end

    require_relative "command"
    COMMANDS_PATH = File.expand_path(File.join(File.dirname(__FILE__), "commands")).freeze
    COMMAND_NAMES = Dir.glob("*.rb", base: COMMANDS_PATH).map { |file| file.chomp(".rb") }
    COMMAND_NAMES.freeze

    COMMAND_NAMES.each do |command|
      require_relative "commands/#{command}"
      define_method command.to_sym do
        (Linuxcnc::Commands.const_get command.camelize).new(client: client)
      end
    end
  end
end
