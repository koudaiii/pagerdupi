module Pagerdupi
  class AddOne
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_addons
      @pagerdupi.get('/addones')
    end
  end
end
