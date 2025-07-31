# frozen_string_literal: true

module Vers
  module Resources
    class API
      # @return [Vers::Resources::API::Cluster]
      attr_reader :cluster

      # @return [Vers::Resources::API::Vm]
      attr_reader :vm

      # @return [Vers::Resources::API::Rootfs]
      attr_reader :rootfs

      # @return [Vers::Resources::API::Health]
      attr_reader :health

      # @return [Vers::Resources::API::Telemetry]
      attr_reader :telemetry

      # @api private
      #
      # @param client [Vers::Client]
      def initialize(client:)
        @client = client
        @cluster = Vers::Resources::API::Cluster.new(client: client)
        @vm = Vers::Resources::API::Vm.new(client: client)
        @rootfs = Vers::Resources::API::Rootfs.new(client: client)
        @health = Vers::Resources::API::Health.new(client: client)
        @telemetry = Vers::Resources::API::Telemetry.new(client: client)
      end
    end
  end
end
