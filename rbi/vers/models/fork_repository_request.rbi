# typed: strong

module Vers
  module Models
    class ForkRepositoryRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::ForkRepositoryRequest, Vers::Internal::AnyHash)
        end

      # The organization that owns the source public repository
      sig { returns(String) }
      attr_accessor :source_org

      # The source repository name
      sig { returns(String) }
      attr_accessor :source_repo

      # The tag to fork (e.g. "latest", "v1.0")
      sig { returns(String) }
      attr_accessor :source_tag

      # Name for the new repository in your org (defaults to source_repo if omitted)
      sig { returns(T.nilable(String)) }
      attr_accessor :repo_name

      # Tag name in the new repo (defaults to source_tag if omitted)
      sig { returns(T.nilable(String)) }
      attr_accessor :tag_name

      # Request body for POST /api/v1/repositories/fork
      sig do
        params(
          source_org: String,
          source_repo: String,
          source_tag: String,
          repo_name: T.nilable(String),
          tag_name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The organization that owns the source public repository
        source_org:,
        # The source repository name
        source_repo:,
        # The tag to fork (e.g. "latest", "v1.0")
        source_tag:,
        # Name for the new repository in your org (defaults to source_repo if omitted)
        repo_name: nil,
        # Tag name in the new repo (defaults to source_tag if omitted)
        tag_name: nil
      )
      end

      sig do
        override.returns(
          {
            source_org: String,
            source_repo: String,
            source_tag: String,
            repo_name: T.nilable(String),
            tag_name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
