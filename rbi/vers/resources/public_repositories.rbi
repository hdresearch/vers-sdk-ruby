# typed: strong

module Vers
  module Resources
    class PublicRepositories
      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          Vers::ListPublicRepositoriesResponse
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          repo_name: String,
          org_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::PublicRepositoryInfo)
      end
      def get(
        # Repository name
        repo_name,
        # Organization name
        org_name:,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          org_name: String,
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::RepoTagInfo)
      end
      def get_tag(
        # Tag name
        tag_name,
        # Organization name
        org_name:,
        # Repository name
        repo_name:,
        request_options: {}
      )
      end

      sig do
        params(
          repo_name: String,
          org_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::ListRepoTagsResponse)
      end
      def list_tags(
        # Repository name
        repo_name,
        # Organization name
        org_name:,
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
