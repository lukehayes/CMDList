#!/usr/bin/ruby -w

require "./BTLR/list.rb"
require "./BTLR/list-item.rb"
require "./BTLR/config.rb"

# Create a config here so that BTLR has access
# to everything that it needs from the start.
config = BTLR::Config.new

l = BTLR::List.new
li = BTLR::ListItem.new("A goal to hit")


task_str = "Task: #{li.task} :: #{li.created_at.to_s} :: #{li.completed} \n\n"

# Write the contents of the task to a file.
File.write(config.default_filename, li, mode:"a")


