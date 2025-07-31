# frozen_string_literal: true

module Vers
  module Resources
    class API
      class Health
        # Get health of the API.
        #
        # @overload check(request_options: {})
        #
        # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [String]
        #
        # @see Vers::Models::API::HealthCheckParams
        def check(params = {})
          @client.request(
            method: :get,
            path: "api/health",
            headers: {"accept" => "text/plain"},
            model: String,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Vers::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
