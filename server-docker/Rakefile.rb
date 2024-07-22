#!!/usr/bin/env rvm 3.2.2

require 'rake/clean'

def rm_rf(path)
  rm_rf(path) if path.exists?
end

GEMS_PATH = File.join(".","vendor")

desc "Remove server generated files"
task :clobber_server do
  rm_rf(GEMS_PATH)
end

task :clean => :clobber_server

CLEAN.include()
CLOBBER.include("Gemfile.lock", ".bundle", "server.log")


