# frozen_string_literal: true

module FirecrackerManager
  module Resources
    class API
      class Vm
        # Retrieve information on a particular VM.
        #
        # @overload retrieve(vm_id_or_alias, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmRetrieveResponse]
        #
        # @see FirecrackerManager::Models::API::VmRetrieveParams
        def retrieve(vm_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/vm/%1$s", vm_id_or_alias],
            model: FirecrackerManager::Models::API::VmRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Update VM state.
        #
        # @overload update(vm_id_or_alias, alias_: nil, state: nil, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param alias_ [String, nil]
        #
        # @param state [Symbol, FirecrackerManager::Models::API::VmPatchParams::State, nil]
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmUpdateResponse]
        #
        # @see FirecrackerManager::Models::API::VmUpdateParams
        def update(vm_id_or_alias, params = {})
          parsed, options = FirecrackerManager::API::VmUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["api/vm/%1$s", vm_id_or_alias],
            body: parsed,
            model: FirecrackerManager::Models::API::VmUpdateResponse,
            options: options
          )
        end

        # List all VMs.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmListResponse]
        #
        # @see FirecrackerManager::Models::API::VmListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "api/vm",
            model: FirecrackerManager::Models::API::VmListResponse,
            options: params[:request_options]
          )
        end

        # Delete a VM.
        #
        # @overload delete(vm_id_or_alias, recursive:, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param recursive [Boolean] Delete children recursively
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmDeleteResponse]
        #
        # @see FirecrackerManager::Models::API::VmDeleteParams
        def delete(vm_id_or_alias, params)
          parsed, options = FirecrackerManager::API::VmDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["api/vm/%1$s", vm_id_or_alias],
            query: parsed,
            model: FirecrackerManager::Models::API::VmDeleteResponse,
            options: options
          )
        end

        # Branch a VM.
        #
        # @overload branch(vm_id_or_alias, alias_: nil, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param alias_ [String, nil]
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmBranchResponse]
        #
        # @see FirecrackerManager::Models::API::VmBranchParams
        def branch(vm_id_or_alias, params = {})
          parsed, options = FirecrackerManager::API::VmBranchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/vm/%1$s/branch", vm_id_or_alias],
            body: parsed,
            model: FirecrackerManager::Models::API::VmBranchResponse,
            options: options
          )
        end

        # Commit a VM.
        #
        # @overload commit(vm_id_or_alias, tags: nil, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param tags [Array<String>, nil]
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmCommitResponse]
        #
        # @see FirecrackerManager::Models::API::VmCommitParams
        def commit(vm_id_or_alias, params = {})
          parsed, options = FirecrackerManager::API::VmCommitParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["api/vm/%1$s/commit", vm_id_or_alias],
            body: parsed,
            model: FirecrackerManager::Models::API::VmCommitResponse,
            options: options
          )
        end

        # Get the SSH private key for VM access
        #
        # @overload get_ssh_key(vm_id_or_alias, request_options: {})
        #
        # @param vm_id_or_alias [String] Unique VM identifier
        #
        # @param request_options [FirecrackerManager::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [FirecrackerManager::Models::API::VmGetSSHKeyResponse]
        #
        # @see FirecrackerManager::Models::API::VmGetSSHKeyParams
        def get_ssh_key(vm_id_or_alias, params = {})
          @client.request(
            method: :get,
            path: ["api/vm/%1$s/ssh_key", vm_id_or_alias],
            model: FirecrackerManager::Models::API::VmGetSSHKeyResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [FirecrackerManager::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
