require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

abilities = Pagerdupi::Ability.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(abilities.get_abilities)
