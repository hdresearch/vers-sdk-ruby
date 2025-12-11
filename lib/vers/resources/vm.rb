# frozen_string_literal: true

module Vers
  module Resources
    class Vm
      # @overload list(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Vers::Models::VmAPI>]
      #
      # @see Vers::Models::VmListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "vms",
          model: Vers::Internal::Type::ArrayOf[Vers::VmAPI],
          options: params[:request_options]
        )
      end

      # @overload delete(vm_id, skip_wait_boot: nil, request_options: {})
      #
      # @param vm_id [String] VM ID to delete
      #
      # @param skip_wait_boot [Boolean] If true, return an error immediately if the VM is still booting. Default: false
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::VmDeleteResponse]
      #
      # @see Vers::Models::VmDeleteParams
      def delete(vm_id, params = {})
        parsed, options = Vers::VmDeleteParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["vm/%1$s", vm_id],
          query: parsed,
          model: Vers::VmDeleteResponse,
          options: options
        )
      end

      # @overload branch(vm_id, request_options: {})
      #
      # @param vm_id [String] Parent VM ID
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::NewVmResponse]
      #
      # @see Vers::Models::VmBranchParams
      def branch(vm_id, params = {})
        @client.request(
          method: :post,
          path: ["vm/%1$s/branch", vm_id],
          model: Vers::NewVmResponse,
          options: params[:request_options]
        )
      end

      # @overload commit(vm_id, keep_paused: nil, skip_wait_boot: nil, request_options: {})
      #
      # @param vm_id [String] VM ID to commit
      #
      # @param keep_paused [Boolean] If true, keep VM paused after commit
      #
      # @param skip_wait_boot [Boolean] If true, return an error immediately if the VM is still booting. Default: false
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::VmCommitResponse]
      #
      # @see Vers::Models::VmCommitParams
      def commit(vm_id, params = {})
        parsed, options = Vers::VmCommitParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["vm/%1$s/commit", vm_id],
          query: parsed,
          model: Vers::Models::VmCommitResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Vers::Models::VmCreateRootParams} for more details.
      #
      # @overload create_root(vm_config:, wait_boot: nil, request_options: {})
      #
      # @param vm_config [Vers::Models::NewRootRequest::VmConfig] Body param: Struct representing configuration options common to all VMs
      #
      # @param wait_boot [Boolean] Query param: If true, wait for the newly-created VM to finish booting before ret
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::NewVmResponse]
      #
      # @see Vers::Models::VmCreateRootParams
      def create_root(params)
        parsed, options = Vers::VmCreateRootParams.dump_request(params)
        query_params = [:wait_boot]
        @client.request(
          method: :post,
          path: "vm/new_root",
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: Vers::NewVmResponse,
          options: options
        )
      end

      # @overload get_ssh_key(vm_id, request_options: {})
      #
      # @param vm_id [String] Node ID
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::VmSSHKeyResponse]
      #
      # @see Vers::Models::VmGetSSHKeyParams
      def get_ssh_key(vm_id, params = {})
        @client.request(
          method: :get,
          path: ["vm/%1$s/ssh_key", vm_id],
          model: Vers::VmSSHKeyResponse,
          options: params[:request_options]
        )
      end

      # @overload restore_from_commit(commit_id:, request_options: {})
      #
      # @param commit_id [String]
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::NewVmResponse]
      #
      # @see Vers::Models::VmRestoreFromCommitParams
      def restore_from_commit(params)
        parsed, options = Vers::VmRestoreFromCommitParams.dump_request(params)
        @client.request(
          method: :post,
          path: "vm/from_commit",
          body: parsed,
          model: Vers::NewVmResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Vers::Models::VmUpdateStateParams} for more details.
      #
      # @overload update_state(vm_id, state:, skip_wait_boot: nil, request_options: {})
      #
      # @param vm_id [String] Path param: VM ID
      #
      # @param state [Symbol, Vers::Models::VmUpdateStateRequest::State] Body param: The requested state for the VM
      #
      # @param skip_wait_boot [Boolean] Query param: If true, error immediately if the VM is not finished booting. Defau
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::VmUpdateStateParams
      def update_state(vm_id, params)
        parsed, options = Vers::VmUpdateStateParams.dump_request(params)
        query_params = [:skip_wait_boot]
        @client.request(
          method: :patch,
          path: ["vm/%1$s/state", vm_id],
          query: parsed.slice(*query_params),
          body: parsed.except(*query_params),
          model: NilClass,
          options: options
        )
      end

      # @api private
      #
      # @param client [Vers::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
