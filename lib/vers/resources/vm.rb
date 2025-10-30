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

      # @overload delete(vm_id, request_options: {})
      #
      # @param vm_id [String] VM ID to delete
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::VmDeleteResponse]
      #
      # @see Vers::Models::VmDeleteParams
      def delete(vm_id, params = {})
        @client.request(
          method: :delete,
          path: ["vm/%1$s", vm_id],
          model: Vers::VmDeleteResponse,
          options: params[:request_options]
        )
      end

      # @overload branch(vm_id, request_options: {})
      #
      # @param vm_id [String] Parent VM ID
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::VmBranchParams
      def branch(vm_id, params = {})
        @client.request(
          method: :post,
          path: ["vm/%1$s/branch", vm_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload commit(vm_id, request_options: {})
      #
      # @param vm_id [String] VM ID to commit
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::VmCommitResponse]
      #
      # @see Vers::Models::VmCommitParams
      def commit(vm_id, params = {})
        @client.request(
          method: :post,
          path: ["vm/%1$s/commit", vm_id],
          model: Vers::VmCommitResponse,
          options: params[:request_options]
        )
      end

      # @overload create_root(vm_config:, request_options: {})
      #
      # @param vm_config [Vers::Models::NewRootRequest::VmConfig] Struct representing configuration options common to all VMs
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::VmCreateRootParams
      def create_root(params)
        parsed, options = Vers::VmCreateRootParams.dump_request(params)
        @client.request(method: :post, path: "vm/new_root", body: parsed, model: NilClass, options: options)
      end

      # @overload restore_from_commit(commit_id:, request_options: {})
      #
      # @param commit_id [String]
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::VmRestoreFromCommitParams
      def restore_from_commit(params)
        parsed, options = Vers::VmRestoreFromCommitParams.dump_request(params)
        @client.request(
          method: :post,
          path: "vm/from_commit",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload update_state(vm_id, state:, request_options: {})
      #
      # @param vm_id [String] VM ID
      #
      # @param state [Symbol, Vers::Models::VmUpdateStateRequest::State] The requested state for the VM
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::VmUpdateStateParams
      def update_state(vm_id, params)
        parsed, options = Vers::VmUpdateStateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["vm/%1$s/state", vm_id],
          body: parsed,
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
