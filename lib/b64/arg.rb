module B64
  class Arg
    attr_reader :type, :fields

    def initialize(type, fields=[])
      @type = type
      @fields = fields
    end

    def help?
      @type == :help
    end

    def encode?
      @type == :encode
    end

    def decode?
      @type == :decode
    end

    def self.parse(argv)
      if argv.empty?
        Arg.new(:help)
      elsif argv.first.downcase == "e" or argv.first.downcase == "enc" or argv.first.downcase == "encode"
        Arg.new(:encode, argv.slice(1, argv.length))
      elsif argv.first.downcase == "d" or argv.first.downcase == "dec" or argv.first.downcase == "decode"
        Arg.new(:decode, argv.slice(1, argv.length))
      else
        Arg.new(:help)
      end
    end
  end
end
