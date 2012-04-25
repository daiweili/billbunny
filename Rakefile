#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake/dsl_definition'
require 'rake'
# Rake Fix Code start
# NOTE: change 'Billbunny' to your app's module name (see config/application.rb)
module ::Billbunny
  class Application
    include Rake::DSL
  end
end
# Rake Fix Code end

Billbunny::Application.load_tasks
