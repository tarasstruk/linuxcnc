# frozen_string_literal: true

module Linuxcnc
  class Handshake
    def initialize(machine:, options: {})
      @machine = machine
    end

    def perform
      answer = @machine.hello.get
      puts answer
      raise Linuxcnc::Errors::CommandRejected, "hello" if answer.include? :nak

      @machine.echo.set :off
      answer = @machine.echo.get
      puts answer
      raise Linuxcnc::Errors::CommandRejected, "echo" if answer.include? :on

      @machine.enable.set
      answer = @machine.enable.get
      puts answer.inspect
      raise Linuxcnc::Errors::CommandRejected, "enable" unless answer.include? :on
    end
  end
end
