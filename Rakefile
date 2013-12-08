# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require "rubygems"
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'ProMotionTwoViews'
  app.frameworks += %w(CoreLocation MapKit)
  app.device_family = [:iphone]
  app.interface_orientations = [:portrait, :portrait_upside_down]
end
