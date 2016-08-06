module Pagerdupi
  class Ability
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_abilities
      @pagerdupi.get('/abilities')
    end
  end
end
