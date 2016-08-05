require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

incidents = Pagerdupi::Incident.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(incidents.get_incidents)

puts Hashie::Mash.new(incidents.get_incidents(
  limit: 100,
  since: (Time.now - 7 * 24 * 60 * 60).strftime('%Y-%m-%d'),
  until: Time.now.strftime('%Y-%m-%d'),
  time_zone: 'Asia/Tokyo',
))
