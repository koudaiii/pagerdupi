module Pagerdupi
  class AddOne
    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_addons(params = {})
      default_params = {
       include: [],
       service_ids: [],
       filter: '',
      }
      query_params = default_params.merge(params)

      @pagerdupi.get('/addones', quary: query_params)
    end
  end
end
