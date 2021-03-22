module BTLR
  # Class is a manager that deals with the input on
  # the command line from the user and interperets
  # it for use inside BTLR.
  class CommandManager

    def initialize()
    end

    # Is the current command thats passed in formatted
    # correctly? i.e -n "some value?".
    def correct?
      length = ARGV.length
      length > 1 && length % 2 == 0
    end
    
  end
end
