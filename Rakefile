# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'pathway'

  # 9.1 not supported by rubymotion as yet
  app.deployment_target = "9.0"
  app.sdk_version = "9.0"

  app.pods do
    pod "pop"
  end
end
