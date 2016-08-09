require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

addones = Pagerdupi::AddOne.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(addones.get_addons)
