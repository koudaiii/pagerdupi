require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

notifications = Pagerdupi::Notification.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(notifications.get_notifications)

puts Hashie::Mash.new(notifications.get_notifications(
  limit: 100,
  since: (Time.now - 7 * 24 * 60 * 60).strftime('%Y-%m-%d'),
  until: Time.now.strftime('%Y-%m-%d'),
  time_zone: 'Asia/Tokyo',
))
