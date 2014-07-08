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
  app.name = 'ProMotionTwoViews'
  app.deployment_target = "7.0"
  app.frameworks += %w(CoreLocation MapKit)
  app.device_family = [:iphone]
  app.interface_orientations = [:portrait, :portrait_upside_down]
end
