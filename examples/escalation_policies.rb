require "rubygems"
require "pagerdupi"
require "dotenv"
require "hashie"

Dotenv.load

escalation_policies = Pagerdupi::EscalationPolicy.new(ENV['PAGER_DUTY_API_KEY'])

puts Hashie::Mash.new(escalation_policies.get_escalation_policies)
