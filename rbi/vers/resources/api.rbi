# typed: strong

module Vers
  module Resources
    class API
      sig { returns(Vers::Resources::API::Cluster) }
      attr_reader :cluster

      sig { returns(Vers::Resources::API::Vm) }
      attr_reader :vm

      sig { returns(Vers::Resources::API::Rootfs) }
      attr_reader :rootfs

      sig { returns(Vers::Resources::API::Health) }
      attr_reader :health

      sig { returns(Vers::Resources::API::Telemetry) }
      attr_reader :telemetry

      # @api private
      sig { params(client: Vers::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
