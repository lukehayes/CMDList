module BTLR
  # Class formats text or offers output of predefined text.
  class Formatter

    def self.title
      self.border
      # TODO Add list name getter
      puts "-BTLR-: Working List: General"
      self.border
    end

    def self.border(size=60)
      for n in 1..size
        print "-"
      end
      print "\n"
    end

    # Add an empty space above and below the
    # output string str.
    def self.spaced(str)
      puts " "
      puts str
      puts " "
    end

  end
end
