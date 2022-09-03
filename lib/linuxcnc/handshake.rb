module Linuxcnc
  class Handshake

    def initialize(machine:, options: { })
      @machine = machine
    end

    def perform
      answer = @machine.hello.get
      raise Linuxcnc::Errors::CommandRejected.new("hello") if answer.nak?
      @machine.echo.set :off
      answer = @machine.echo.get
      raise Linuxcnc::Errors::CommandRejected.new("echo") if answer.on?
      @machine.enable.set
      answer = @machine.enable.get
      raise Linuxcnc::Errors::CommandRejected.new("enable") if answer.off?
    end

  end
end
