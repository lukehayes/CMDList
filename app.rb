#!/usr/bin/ruby

# Quick and dirty way of importing all of the files
Dir.glob("BTLR/**/*.rb") {|file| require_relative file }

# Create a config here so that BTLR has access
# to everything that it needs from the start.
config = BTLR::Config.new
list = BTLR::ListManager.new(config)

# Setup a CommandManager to manage incoming options flags.
manager = BTLR::CommandManager.new
opt = manager.manage(config)


# Check if the option is available, then call it.
if list.respond_to? opt['method']
  list.send(opt['method'])
else
  raise BTLR::Exception::CommandError.new
end

