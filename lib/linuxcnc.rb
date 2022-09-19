# frozen_string_literal: true

require_relative "linuxcnc/version"

module Linuxcnc
  class Error < StandardError; end
end

require "net/telnet"
require "active_support/core_ext/object"
require "active_support/core_ext/class"
require "active_support/inflector"

require_relative "linuxcnc/errors"
require_relative "linuxcnc/client"
require_relative "linuxcnc/handshake"

require_relative "linuxcnc/commands"
require_relative "linuxcnc/machine"
