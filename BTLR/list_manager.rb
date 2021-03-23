module BTLR
  class ListManager

    def initialize()
    end

    # Show all of the lasts that are stored inside the list.
    def show_all
      config = Config.new()
      File.read(config.default_filename)
    end
    
  end
end
