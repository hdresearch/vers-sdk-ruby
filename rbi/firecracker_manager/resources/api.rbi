# typed: strong

module FirecrackerManager
  module Resources
    class API
      sig { returns(FirecrackerManager::Resources::API::Cluster) }
      attr_reader :cluster

      sig { returns(FirecrackerManager::Resources::API::Vm) }
      attr_reader :vm

      sig { returns(FirecrackerManager::Resources::API::Rootfs) }
      attr_reader :rootfs

      sig { returns(FirecrackerManager::Resources::API::Health) }
      attr_reader :health

      sig { returns(FirecrackerManager::Resources::API::Telemetry) }
      attr_reader :telemetry

      # @api private
      sig do
        params(client: FirecrackerManager::Client).returns(T.attached_class)
      end
      def self.new(client:)
      end
    end
  end
end
