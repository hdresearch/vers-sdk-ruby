# typed: strong

module FirecrackerManager
  module Resources
    class API
      class Health
        # Get health of the API.
        sig do
          params(
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(String)
        end
        def check(request_options: {})
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
