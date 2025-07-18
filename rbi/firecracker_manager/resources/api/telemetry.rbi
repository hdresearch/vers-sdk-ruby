# typed: strong

module FirecrackerManager
  module Resources
    class API
      class Telemetry
        # Get telemetry information
        sig do
          params(
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::API::TelemetryDto)
        end
        def get_info(request_options: {})
        end

        # @api private
        sig do
          params(client: FirecrackerManager::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
