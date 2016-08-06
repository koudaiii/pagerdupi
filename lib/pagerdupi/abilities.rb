module Pagerdupi
  class Ability
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_abilities
      @pagerdupi.get('/abilities')
    end
    def show
    end
    def create
    end
    def update
    end
    def delete
    end
  end
end
