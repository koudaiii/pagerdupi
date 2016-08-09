module Pagerdupi
  class EscalationPolicy

    def initialize(api_key)
      @pagerdupi = Pagerdupi::Client.new(api_key)
    end

    def get_escalation_policies(params = {})
      default_params = {
       query: '',
       user_ids: [],
       team_ids: [],
       include: [],
       sort_by: '',
      }
      query_params = default_params.merge(params)

      @pagerdupi.get('/escalation_policies', quary: query_params)
    end
  end
end
