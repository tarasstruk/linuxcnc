# frozen_string_literal: true

module Linuxcnc
  class Handshake # :nodoc:
    def initialize(machine:, _options: {})
      @machine = machine
    end

    def perform
      phase1
      phase2
      phase3
    end

    def phase1
      answer = @machine.hello.get
      puts answer
      raise Linuxcnc::Errors::CommandRejected, "hello" if answer.include? :nak
    end

    def phase2
      @machine.echo.set :off
      answer = @machine.echo.get
      puts answer
      raise Linuxcnc::Errors::CommandRejected, "echo" if answer.include? :on
    end

    def phase3
      @machine.enable.set
      answer = @machine.enable.get
      puts answer.inspect
      raise Linuxcnc::Errors::CommandRejected, "enable" unless answer.include? :on
    end
  end
end
