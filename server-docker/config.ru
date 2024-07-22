require 'logger'
require File.absolute_path("server.rb")

log = File.new("server.log", "a+")
$stdout.reopen(log)
$stderr.reopen(log)

# optionally to sync logs while the server is running
$stderr.sync = true
$stdout.sync = true

configure do
  LOGGER = Logger.new("server.log")
  enable :logging, :dump_errors
  set :raise_errors, true
end

run Application
