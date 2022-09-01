# frozen_string_literal: true

require_relative "linuxcnc/version"

module Linuxcnc
  class Error < StandardError; end
  # Your code goes here...
end

require "net/telnet"

require_relative "linuxcnc/client"
require_relative "linuxcnc/handshake"
require_relative "linuxcnc/responses/base"
require_relative "linuxcnc/responses/ack_nak"
require_relative "linuxcnc/responses/on_off"
require_relative "linuxcnc/responses/floats"
require_relative "linuxcnc/responses/mode"
require_relative "linuxcnc/commands/base"
require_relative "linuxcnc/commands/estop"
require_relative "linuxcnc/commands/home"
require_relative "linuxcnc/commands/joint_pos"
require_relative "linuxcnc/commands/machine"
require_relative "linuxcnc/commands/mode"
require_relative "linuxcnc/commands/mdi"
