#!/usr/bin/ruby

# Quick and dirty way of importing all of the files
Dir.glob("BTLR/**/*.rb") {|file| require_relative file }

# Create a config here so that BTLR has access
# to everything that it needs from the start.
config = BTLR::Config.new

# Setup a CommandManager to manage incoming options flags.
manager = BTLR::CommandManager.new
opt = manager.command(config)




