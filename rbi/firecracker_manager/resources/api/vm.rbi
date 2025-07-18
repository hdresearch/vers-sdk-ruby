# typed: strong

module FirecrackerManager
  module Resources
    class API
      class Vm
        # Retrieve information on a particular VM.
        sig do
          params(
            vm_id_or_alias: String,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmRetrieveResponse)
        end
        def retrieve(
          # Unique VM identifier
          vm_id_or_alias,
          request_options: {}
        )
        end

        # Update VM state.
        sig do
          params(
            vm_id_or_alias: String,
            alias_: T.nilable(String),
            state:
              T.nilable(
                FirecrackerManager::API::VmPatchParams::State::OrSymbol
              ),
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmUpdateResponse)
        end
        def update(
          # Unique VM identifier
          vm_id_or_alias,
          alias_: nil,
          state: nil,
          request_options: {}
        )
        end

        # List all VMs.
        sig do
          params(
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmListResponse)
        end
        def list(request_options: {})
        end

        # Delete a VM.
        sig do
          params(
            vm_id_or_alias: String,
            recursive: T::Boolean,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmDeleteResponse)
        end
        def delete(
          # Unique VM identifier
          vm_id_or_alias,
          # Delete children recursively
          recursive:,
          request_options: {}
        )
        end

        # Branch a VM.
        sig do
          params(
            vm_id_or_alias: String,
            alias_: T.nilable(String),
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmBranchResponse)
        end
        def branch(
          # Unique VM identifier
          vm_id_or_alias,
          alias_: nil,
          request_options: {}
        )
        end

        # Commit a VM.
        sig do
          params(
            vm_id_or_alias: String,
            tags: T.nilable(T::Array[String]),
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmCommitResponse)
        end
        def commit(
          # Unique VM identifier
          vm_id_or_alias,
          tags: nil,
          request_options: {}
        )
        end

        # Get the SSH private key for VM access
        sig do
          params(
            vm_id_or_alias: String,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(FirecrackerManager::Models::API::VmGetSSHKeyResponse)
        end
        def get_ssh_key(
          # Unique VM identifier
          vm_id_or_alias,
          request_options: {}
        )
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
