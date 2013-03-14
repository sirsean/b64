require "base64"

module B64
  class Engine
    def initialize(opts={})
      @plain = opts[:plain]
      @base64 = opts[:base64]
    end

    def encode
      if not @plain.nil?
        Base64::encode64(@plain).chomp
      end
    end

    def decode
      if not @base64.nil?
        Base64::decode64(@base64).chomp
      end
    end
  end
end
