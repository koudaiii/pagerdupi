require "rubygems"
require "pagerdupi"
require "dotenv"

Dotenv.load

incidents = Pagerdupi::Incident.new(ENV['PAGER_DUTY_API_KEY'])
puts incidents.list
