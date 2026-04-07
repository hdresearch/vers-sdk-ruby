# typed: strong

module Vers
  module Models
    class UpdateCommitRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::UpdateCommitRequest, Vers::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :is_public

      # Optional description for the commit.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional human-readable name for the commit.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Request body for PATCH /commits/{commit_id}
      sig do
        params(
          is_public: T::Boolean,
          description: T.nilable(String),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        is_public:,
        # Optional description for the commit.
        description: nil,
        # Optional human-readable name for the commit.
        name: nil
      )
      end

      sig do
        override.returns(
          {
            is_public: T::Boolean,
            description: T.nilable(String),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
