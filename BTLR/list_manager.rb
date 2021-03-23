module BTLR
  class ListManager

    def initialize(config)
      @config = config
    end

    # Show all of the lasts that are stored inside the list.
    def show_all
      File.read(@config.default_filename).each_line {|line| puts line }
    end
  end
end
