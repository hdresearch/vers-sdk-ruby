# typed: strong

module Vers
  module Models
    class PublicRepositoryInfo < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::PublicRepositoryInfo, Vers::Internal::AnyHash)
        end

      # When the repository was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Full reference: org_name/repo_name
      sig { returns(String) }
      attr_accessor :full_name

      # The repository name
      sig { returns(String) }
      attr_accessor :name

      # The owning organization's name (namespace)
      sig { returns(String) }
      attr_accessor :org_name

      # The repository's unique identifier
      sig { returns(String) }
      attr_accessor :repo_id

      # Optional description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Public repository information (includes owner org name for namespacing)
      sig do
        params(
          created_at: Time,
          full_name: String,
          name: String,
          org_name: String,
          repo_id: String,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # When the repository was created
        created_at:,
        # Full reference: org_name/repo_name
        full_name:,
        # The repository name
        name:,
        # The owning organization's name (namespace)
        org_name:,
        # The repository's unique identifier
        repo_id:,
        # Optional description
        description: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            full_name: String,
            name: String,
            org_name: String,
            repo_id: String,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
