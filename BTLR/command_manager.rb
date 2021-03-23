module BTLR
  # Class is a manager that deals with the input on
  # the command line from the user and interperets
  # it for use inside BTLR.
  class CommandManager

    def initialize()
    end

    # Is the current command thats passed in formatted
    # correctly? i.e -n "some value?".
    def correct_format?
      length = ARGV.length
      length > 1 && length % 2 == 0
    end

    # Manages incoming flag options sent in from the 
    # command line.
    def manage(config)
      options = config.options
      flag = ARGV[0]
      options[flag]
    end

    def flag_info(obj)
      puts "#{obj}"
    end

    private

    # Check if the obj is a Hash
    def hash?(obj)
      obj.respond_to? :to_hash
    end
    
  end
end
