# frozen_string_literal: true

module Vers
  module Resources
    class Repositories
      # Some parameter documentations has been truncated, see
      # {Vers::Models::RepositoryCreateParams} for more details.
      #
      # @overload create(name:, description: nil, request_options: {})
      #
      # @param name [String] The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64 chars
      #
      # @param description [String, nil] Optional description of the repository
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::CreateRepositoryResponse]
      #
      # @see Vers::Models::RepositoryCreateParams
      def create(params)
        parsed, options = Vers::RepositoryCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/repositories",
          body: parsed,
          model: Vers::CreateRepositoryResponse,
          options: options
        )
      end

      # @overload list(request_options: {})
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListRepositoriesResponse]
      #
      # @see Vers::Models::RepositoryListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "api/v1/repositories",
          model: Vers::ListRepositoriesResponse,
          options: params[:request_options]
        )
      end

      # @overload delete(repo_name, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::RepositoryDeleteParams
      def delete(repo_name, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/repositories/%1$s", repo_name],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload create_tag(repo_name, commit_id:, tag_name:, description: nil, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param commit_id [String] The commit ID this tag should point to
      #
      # @param tag_name [String] The tag name (e.g. "latest", "v1.0")
      #
      # @param description [String, nil] Optional description of what this tag represents
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::CreateRepoTagResponse]
      #
      # @see Vers::Models::RepositoryCreateTagParams
      def create_tag(repo_name, params)
        parsed, options = Vers::RepositoryCreateTagParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v1/repositories/%1$s/tags", repo_name],
          body: parsed,
          model: Vers::CreateRepoTagResponse,
          options: options
        )
      end

      # @overload delete_tag(tag_name, repo_name:, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::RepositoryDeleteTagParams
      def delete_tag(tag_name, params)
        parsed, options = Vers::RepositoryDeleteTagParams.dump_request(params)
        repo_name =
          parsed.delete(:repo_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["api/v1/repositories/%1$s/tags/%2$s", repo_name, tag_name],
          model: NilClass,
          options: options
        )
      end

      # @overload fork_(source_org:, source_repo:, source_tag:, repo_name: nil, tag_name: nil, request_options: {})
      #
      # @param source_org [String] The organization that owns the source public repository
      #
      # @param source_repo [String] The source repository name
      #
      # @param source_tag [String] The tag to fork (e.g. "latest", "v1.0")
      #
      # @param repo_name [String, nil] Name for the new repository in your org (defaults to source_repo if omitted)
      #
      # @param tag_name [String, nil] Tag name in the new repo (defaults to source_tag if omitted)
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ForkRepositoryResponse]
      #
      # @see Vers::Models::RepositoryForkParams
      def fork_(params)
        parsed, options = Vers::RepositoryForkParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/repositories/fork",
          body: parsed,
          model: Vers::ForkRepositoryResponse,
          options: options
        )
      end

      # @overload get(repo_name, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::RepositoryInfo]
      #
      # @see Vers::Models::RepositoryGetParams
      def get(repo_name, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/repositories/%1$s", repo_name],
          model: Vers::RepositoryInfo,
          options: params[:request_options]
        )
      end

      # @overload get_tag(tag_name, repo_name:, request_options: {})
      #
      # @param tag_name [String] Tag name
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::RepoTagInfo]
      #
      # @see Vers::Models::RepositoryGetTagParams
      def get_tag(tag_name, params)
        parsed, options = Vers::RepositoryGetTagParams.dump_request(params)
        repo_name =
          parsed.delete(:repo_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["api/v1/repositories/%1$s/tags/%2$s", repo_name, tag_name],
          model: Vers::RepoTagInfo,
          options: options
        )
      end

      # @overload list_tags(repo_name, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Vers::Models::ListRepoTagsResponse]
      #
      # @see Vers::Models::RepositoryListTagsParams
      def list_tags(repo_name, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/repositories/%1$s/tags", repo_name],
          model: Vers::ListRepoTagsResponse,
          options: params[:request_options]
        )
      end

      # @overload set_visibility(repo_name, is_public:, request_options: {})
      #
      # @param repo_name [String] Repository name
      #
      # @param is_public [Boolean] Whether the repository should be publicly visible
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::RepositorySetVisibilityParams
      def set_visibility(repo_name, params)
        parsed, options = Vers::RepositorySetVisibilityParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v1/repositories/%1$s/visibility", repo_name],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload update_tag(tag_name, repo_name:, commit_id: nil, description: nil, request_options: {})
      #
      # @param tag_name [String] Path param: Tag name
      #
      # @param repo_name [String] Path param: Repository name
      #
      # @param commit_id [String, nil] Body param: Optional new commit ID to move the tag to
      #
      # @param description [String, nil] Body param: Optional new description for the tag. Send `null` to clear.
      #
      # @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Vers::Models::RepositoryUpdateTagParams
      def update_tag(tag_name, params)
        parsed, options = Vers::RepositoryUpdateTagParams.dump_request(params)
        repo_name =
          parsed.delete(:repo_name) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["api/v1/repositories/%1$s/tags/%2$s", repo_name, tag_name],
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
