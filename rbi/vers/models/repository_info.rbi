# typed: strong

module Vers
  module Models
    class RepositoryInfo < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::RepositoryInfo, Vers::Internal::AnyHash) }

      # When the repository was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether this repository is publicly visible
      sig { returns(T::Boolean) }
      attr_accessor :is_public

      # The repository name
      sig { returns(String) }
      attr_accessor :name

      # The repository's unique identifier
      sig { returns(String) }
      attr_accessor :repo_id

      # Optional description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Repository information returned in list and get operations
      sig do
        params(
          created_at: Time,
          is_public: T::Boolean,
          name: String,
          repo_id: String,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # When the repository was created
        created_at:,
        # Whether this repository is publicly visible
        is_public:,
        # The repository name
        name:,
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
            is_public: T::Boolean,
            name: String,
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
