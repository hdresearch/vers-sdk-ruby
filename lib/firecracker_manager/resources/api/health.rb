# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      class Health
        # Get health of the API.
        #
        # @overload check(request_options: {})
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [String]
        #
        # @see FirecrackerManager::Models::API::HealthCheckParams
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
        # @param client [FirecrackerManager::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
