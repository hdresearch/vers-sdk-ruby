# typed: strong

module Vers
  module Resources
    class Vm
      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          T::Array[Vers::VmAPI]
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmDeleteResponse)
      end
      def delete(
        # VM ID to delete
        vm_id,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def branch(
        # Parent VM ID
        vm_id,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmCommitResponse)
      end
      def commit(
        # VM ID to commit
        vm_id,
        request_options: {}
      )
      end

      sig do
        params(
          vm_config: Vers::NewRootRequest::VmConfig::OrHash,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def create_root(
        # Struct representing configuration options common to all VMs
        vm_config:,
        request_options: {}
      )
      end

      sig do
        params(
          commit_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def restore_from_commit(commit_id:, request_options: {})
      end

      sig do
        params(
          vm_id: String,
          state: Vers::VmUpdateStateRequest::State::OrSymbol,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def update_state(
        # VM ID
        vm_id,
        # The requested state for the VM
        state:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Vers::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
