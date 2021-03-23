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

      # Returns a hash containing all of the command line options.
      # 
      # TODO - Refactoring necessary. Need to find suitable
      #        design pattern.
      def options
        {
          "-a" => {
            "flag" => "-a",
            "desc" => "Show all of the tasks in your list.",
            "usage" => "btlr -a"
          },

          "-n" => {
            "flag" => "-n",
            "desc" => "Add a new task to your list.",
            "usage" => "btlr -n <string>"
          }
        }
      end
    
  end
end
