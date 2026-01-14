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
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmDeleteResponse)
      end
      def delete(
        # VM ID to delete
        vm_id,
        # If true, return an error immediately if the VM is still booting. Default: false
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmCommitResponse)
      end
      def commit(
        # VM ID to commit
        vm_id,
        # If true, keep VM paused after commit
        keep_paused: nil,
        # If true, return an error immediately if the VM is still booting. Default: false
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        params(
          vm_config: Vers::NewRootRequest::VmConfig::OrHash,
          wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmResponse)
      end
      def create_root(
        # Body param: Struct representing configuration options common to all VMs
        vm_config:,
        # Query param: If true, wait for the newly-created VM to finish booting before
        # returning. Default: false.
        wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmSSHKeyResponse)
      end
      def get_ssh_key(
        # Node ID
        vm_id,
        request_options: {}
      )
      end

      sig do
        params(
          commit_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmResponse)
      end
      def restore_from_commit(commit_id:, request_options: {})
      end

      sig do
        params(
          vm_id: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::VmAPI)
      end
      def status(
        # VM ID
        vm_id,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          state: Vers::VmUpdateStateRequest::State::OrSymbol,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def update_state(
        # Path param: VM ID
        vm_id,
        # Body param: The requested state for the VM
        state:,
        # Query param: If true, error immediately if the VM is not finished booting.
        # Defaults to false
        skip_wait_boot: nil,
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
