# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      # @return [FirecrackerManager::Resources::API::Cluster]
      attr_reader :cluster

      # @return [FirecrackerManager::Resources::API::Vm]
      attr_reader :vm

      # @return [FirecrackerManager::Resources::API::Rootfs]
      attr_reader :rootfs

      # @return [FirecrackerManager::Resources::API::Health]
      attr_reader :health

      # @return [FirecrackerManager::Resources::API::Telemetry]
      attr_reader :telemetry

      # @api private
      #
      # @param client [FirecrackerManager::Client]
      def initialize(client:)
        @client = client
        @cluster = FirecrackerManager::Resources::API::Cluster.new(client: client)
        @vm = FirecrackerManager::Resources::API::Vm.new(client: client)
        @rootfs = FirecrackerManager::Resources::API::Rootfs.new(client: client)
        @health = FirecrackerManager::Resources::API::Health.new(client: client)
        @telemetry = FirecrackerManager::Resources::API::Telemetry.new(client: client)
      end
    end
  end
end
