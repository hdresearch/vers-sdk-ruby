# frozen_string_literal: true

module Vers
  module Resources
    class PublicRepositories
      # @overload list(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListPublicRepositoriesResponse]
      #
      # @see Vers::Models::PublicRepositoryListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v1/public/repositories",
          model: Vers::ListPublicRepositoriesResponse,
          options: params[:request_options]
        )
      end

      # @overload get(repo_name, org_name:, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param org_name [String] Organization name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::PublicRepositoryInfo]
      #
      # @see Vers::Models::PublicRepositoryGetParams
      def get(repo_name, params)
        parsed, options = Vers::PublicRepositoryGetParams.dump_request(params)
        org_name =
          parsed.delete(:org_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v1/public/repositories/%1$s/%2$s", org_name, repo_name],
          model: Vers::PublicRepositoryInfo,
          options: options
        )
      end

      # @overload get_tag(tag_name, org_name:, repo_name:, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param org_name [String] Organization name
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::RepoTagInfo]
      #
      # @see Vers::Models::PublicRepositoryGetTagParams
      def get_tag(tag_name, params)
        parsed, options = Vers::PublicRepositoryGetTagParams.dump_request(params)
        org_name =
          parsed.delete(:org_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        repo_name =
          parsed.delete(:repo_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v1/public/repositories/%1$s/%2$s/tags/%3$s", org_name, repo_name, tag_name],
          model: Vers::RepoTagInfo,
          options: options
        )
      end

      # @overload list_tags(repo_name, org_name:, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param org_name [String] Organization name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListRepoTagsResponse]
      #
      # @see Vers::Models::PublicRepositoryListTagsParams
      def list_tags(repo_name, params)
        parsed, options = Vers::PublicRepositoryListTagsParams.dump_request(params)
        org_name =
          parsed.delete(:org_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v1/public/repositories/%1$s/%2$s/tags", org_name, repo_name],
          model: Vers::ListRepoTagsResponse,
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
