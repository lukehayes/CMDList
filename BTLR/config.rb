module BTLR
  # Class contains all of the settings that BTLR may need 
  # to define, all in a single location.
  class Config

      attr_accessor :default_filename

      # Upon research, Ruby classes don't have static fields
      # like in Java so for now Config will need to be
      # intialized until I find a better solution.
      def initialize
          @default_filename = "BTLR-tasks.txt"
      end
    
  end
end
