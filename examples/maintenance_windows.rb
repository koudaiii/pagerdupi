require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

maintenance_windows = Pagerdupi::MaintenanceWindow.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(maintenance_windows.get_maintenance_windows)

puts Hashie::Mash.new(maintenance_windows.get_maintenance_windows(
  limit: 100,
  since: (Time.now - 7 * 24 * 60 * 60).strftime('%Y-%m-%d'),
  until: Time.now.strftime('%Y-%m-%d'),
  time_zone: 'Asia/Tokyo',
))
