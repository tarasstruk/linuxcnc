module Linuxcnc
  module Commands
    class Base

      HEARTBEAT_COMMAND = "\nget plat"
      HEARTBEAT_RESPONSE = /Linux/mi

      def initialize(client:, options: { })
        @conn = client.connection
      end


      def get_command(params=[])
        ["get", name, params].flatten.join(" ")
      end

      def set_command(params=[])
        ["set", name, params].flatten.join(" ") << HEARTBEAT_COMMAND
      end

      def get(params=[])
        command = get_command(params)
        data = @conn.cmd("Match" => target_response_class.pattern, "String" => command)
        print_debug(command, data)
        target_response_class.new(data)
      end

      def set(params=[])
        command = set_command(params)
        data = @conn.cmd("String" => command, "Match" => HEARTBEAT_RESPONSE)
        print_debug(command, data)
      end



      def tx(params=[])
        set(params)
        get
      end

      def on!
        tx("on")
      end

      def off!
        tx("off")
      end

      def print_debug(command, data)
        puts "----command----"
        puts command
        puts "---------------"
        puts "------data-----"
        puts data
        puts "---------------"
      end

    end
  end
end

