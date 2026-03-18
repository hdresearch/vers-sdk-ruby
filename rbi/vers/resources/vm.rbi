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
          vm_or_commit_id: String,
          count: Integer,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmsResponse)
      end
      def branch(
        # Parent VM or commit ID
        vm_or_commit_id,
        # Number of VMs to branch (optional; default 1)
        count: nil,
        # If true, keep VM paused after commit. Only applicable when branching a VM ID.
        keep_paused: nil,
        # If true, immediately return an error if VM is booting instead of waiting. Only
        # applicable when branching a VM ID.
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        params(
          commit_id: String,
          count: Integer,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmsResponse)
      end
      def branch_by_commit(
        # The commit id to branch off
        commit_id,
        # Number of VMs to branch (optional; default 1)
        count: nil,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          count: Integer,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmsResponse)
      end
      def branch_by_tag(
        # The tag name to branch off
        tag_name,
        # Number of VMs to branch (optional; default 1)
        count: nil,
        request_options: {}
      )
      end

      sig do
        params(
          vm_id: String,
          count: Integer,
          keep_paused: T::Boolean,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmsResponse)
      end
      def branch_by_vm(
        # VM to commit and then branch off of
        vm_id,
        # Number of VMs to branch (optional; default 1)
        count: nil,
        # If true, keep VM paused after commit
        keep_paused: nil,
        # If true, immediately return an error if VM is booting instead of waiting
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
        ).returns(Vers::VmMetadataResponse)
      end
      def get_metadata(
        # VM ID
        vm_id,
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
          vm_id: String,
          fs_size_mib: Integer,
          skip_wait_boot: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def resize_disk(
        # Path param: VM ID whose disk to resize
        vm_id,
        # Body param: The new disk size in MiB. Must be strictly greater than the current
        # size.
        fs_size_mib:,
        # Query param: If true, return an error immediately if the VM is still booting.
        # Default: false
        skip_wait_boot: nil,
        request_options: {}
      )
      end

      sig do
        params(
          vm_from_commit_request:
            T.any(
              Vers::VmFromCommitRequest::CommitID::OrHash,
              Vers::VmFromCommitRequest::TagName::OrHash
            ),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::NewVmResponse)
      end
      def restore_from_commit(
        # Request body for POST /api/v1/vm/from_commit
        vm_from_commit_request:,
        request_options: {}
      )
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
