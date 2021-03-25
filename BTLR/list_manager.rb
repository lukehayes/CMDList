require_relative "colors"
require_relative "formatter"

module BTLR
  class ListManager

    def initialize(config)
      @config = config
    end

    # Show all of the lasts that are stored inside the list.
    def show_all
      File.read(@config.default_filename).each_line {|line| puts line }
    end

    # Add a new task to the list.
    def add_task(task)
      File.write(@config.default_filename, "#{BTLR::ListItem.new(task)}\n", mode: "a+")
    end

    # Create a new list file.
    def create_list(name)
      fh = File.new("#{name}.txt", "w")
      fh.close
    end

    def delete_list(name)
      file = "#{name}.txt"
      if File.delete(file)
        puts ""
        puts "#{Color.green("List #{file} has been removed successfully.")}"
        puts ""
      end
    end

  end
end
