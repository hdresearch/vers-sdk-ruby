# frozen_string_literal: true

module Vers
  module Resources
    class Commits
      # @overload update(commit_id, is_public:, description: nil, name: nil, request_options: {})
      #
      # @param commit_id [String] The commit ID
      #
      # @param is_public [Boolean]
      #
      # @param description [String, nil] Optional description for the commit.
      #
      # @param name [String, nil] Optional human-readable name for the commit.
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::CommitInfo]
      #
      # @see Vers::Models::CommitUpdateParams
      def update(commit_id, params)
        parsed, options = Vers::CommitUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v1/commits/%1$s", commit_id],
          body: parsed,
          model: Vers::CommitInfo,
          options: options
        )
      end

      # @overload list(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListCommitsResponse]
      #
      # @see Vers::Models::CommitListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v1/commits",
          model: Vers::ListCommitsResponse,
          options: params[:request_options]
        )
      end

      # @overload delete(commit_id, request_options: {})
      #
      # @param commit_id [String] Commit ID to delete
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::CommitDeleteParams
      def delete(commit_id, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/commits/%1$s", commit_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload list_parents(commit_id, request_options: {})
      #
      # @param commit_id [String] Commit ID to start from
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Vers::Models::CommitListParentsResponseItem>]
      #
      # @see Vers::Models::CommitListParentsParams
      def list_parents(commit_id, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/vm/commits/%1$s/parents", commit_id],
          model: Vers::Internal::Type::ArrayOf[Vers::Models::CommitListParentsResponseItem],
          options: params[:request_options]
        )
      end

      # @overload list_public(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListCommitsResponse]
      #
      # @see Vers::Models::CommitListPublicParams
      def list_public(params = {})
        @client.request(
          method: :get,
          path: "api/v1/commits/public",
          model: Vers::ListCommitsResponse,
          options: params[:request_options]
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
