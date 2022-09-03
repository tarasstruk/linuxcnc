module Linuxcnc
  class Command

    class_attribute :target

    attr_reader :client

    def initialize(client:, options: { })
      @client = client
    end

    def name
      self.class.name.demodulize.underscore
    end

    def get(params=[])
      string = build_get(params)
      data = client.read(string, read_pattern)
      target.new(data)
    end

    def read_pattern
      Regexp.new("^#{name}\\s" + target.pattern.source, Regexp::IGNORECASE | Regexp::MULTILINE)
    end

    def set(params=[])
      string = build_set(params)
      client.write(string)
    end

    private

    def build_get(params)
      ["get", name, params].flatten.join(" ")
    end

    def build_set(params)
      ["set", name, params].flatten.join(" ")
    end

  end
end
