# frozen_string_literal: true

module Linuxcnc
  class Machine
    attr_reader :client, :options

    include Commands

    def initialize(options: {}, client: Client.new)
      @client = client
      @options = options
    end

    def connect
      client.establish_connection
    end

    def connected?
      client.connection.present?
    end

    def disconnect
      client.disconnect
    end

    def say_hello
      Linuxcnc::Handshake.new(machine: self).perform
    end

    def enabled?
      enable.get.on?
    end

    def num_joints
      options.fetch(:num_joints, 3)
    end
  end
end
