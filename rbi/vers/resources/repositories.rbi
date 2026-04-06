# typed: strong

module Vers
  module Resources
    class Repositories
      sig do
        params(
          name: String,
          description: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::CreateRepositoryResponse)
      end
      def create(
        # The name of the repository (alphanumeric, hyphens, underscores, dots, 1-64
        # chars)
        name:,
        # Optional description of the repository
        description: nil,
        request_options: {}
      )
      end

      sig do
        params(request_options: Vers::RequestOptions::OrHash).returns(
          Vers::ListRepositoriesResponse
        )
      end
      def list(request_options: {})
      end

      sig do
        params(
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Repository name
        repo_name,
        request_options: {}
      )
      end

      sig do
        params(
          repo_name: String,
          commit_id: String,
          tag_name: String,
          description: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::CreateRepoTagResponse)
      end
      def create_tag(
        # Repository name
        repo_name,
        # The commit ID this tag should point to
        commit_id:,
        # The tag name (e.g. "latest", "v1.0")
        tag_name:,
        # Optional description of what this tag represents
        description: nil,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def delete_tag(
        # Tag name
        tag_name,
        # Repository name
        repo_name:,
        request_options: {}
      )
      end

      sig do
        params(
          source_org: String,
          source_repo: String,
          source_tag: String,
          repo_name: T.nilable(String),
          tag_name: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::ForkRepositoryResponse)
      end
      def fork_(
        # The organization that owns the source public repository
        source_org:,
        # The source repository name
        source_repo:,
        # The tag to fork (e.g. "latest", "v1.0")
        source_tag:,
        # Name for the new repository in your org (defaults to source_repo if omitted)
        repo_name: nil,
        # Tag name in the new repo (defaults to source_tag if omitted)
        tag_name: nil,
        request_options: {}
      )
      end

      sig do
        params(
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::RepositoryInfo)
      end
      def get(
        # Repository name
        repo_name,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::RepoTagInfo)
      end
      def get_tag(
        # Tag name
        tag_name,
        # Repository name
        repo_name:,
        request_options: {}
      )
      end

      sig do
        params(
          repo_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(Vers::ListRepoTagsResponse)
      end
      def list_tags(
        # Repository name
        repo_name,
        request_options: {}
      )
      end

      sig do
        params(
          repo_name: String,
          is_public: T::Boolean,
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def set_visibility(
        # Repository name
        repo_name,
        # Whether the repository should be publicly visible
        is_public:,
        request_options: {}
      )
      end

      sig do
        params(
          tag_name: String,
          repo_name: String,
          commit_id: T.nilable(String),
          description: T.nilable(String),
          request_options: Vers::RequestOptions::OrHash
        ).void
      end
      def update_tag(
        # Path param: Tag name
        tag_name,
        # Path param: Repository name
        repo_name:,
        # Body param: Optional new commit ID to move the tag to
        commit_id: nil,
        # Body param: Optional new description for the tag. Send `null` to clear.
        description: nil,
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
