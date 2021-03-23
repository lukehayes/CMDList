module BTLR
  module Exception
    # Custom exception for dealing with poorly formatted
    # arguments sent in from the command line.
    class CommandError < StandardError
      def initialize(msg="Incorrect command format. Try the -h flag to see the options.", 
                     exception_type="Command Error")
        @exception_type = exception_type
        super(msg)
      end
    end
  end
end
