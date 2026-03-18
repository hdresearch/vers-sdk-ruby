# typed: strong

module Vers
  module Models
    class CommitListParentsResponseItem < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Vers::Models::CommitListParentsResponseItem,
            Vers::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      # Whether this commit is publicly accessible (readable/restorable by anyone).
      sig { returns(T::Boolean) }
      attr_accessor :is_public

      sig { returns(String) }
      attr_accessor :name

      # api key id.
      sig { returns(String) }
      attr_accessor :owner_id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The commit that this commit's parent VM was started from, if any. Intended to
      # optimize traversing the commit tree.
      sig { returns(T.nilable(String)) }
      attr_accessor :grandparent_commit_id

      # The VM that this commit was created from, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :parent_vm_id

      sig do
        params(
          id: String,
          created_at: Time,
          is_public: T::Boolean,
          name: String,
          owner_id: String,
          description: T.nilable(String),
          grandparent_commit_id: T.nilable(String),
          parent_vm_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        # Whether this commit is publicly accessible (readable/restorable by anyone).
        is_public:,
        name:,
        # api key id.
        owner_id:,
        description: nil,
        # The commit that this commit's parent VM was started from, if any. Intended to
        # optimize traversing the commit tree.
        grandparent_commit_id: nil,
        # The VM that this commit was created from, if any.
        parent_vm_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            is_public: T::Boolean,
            name: String,
            owner_id: String,
            description: T.nilable(String),
            grandparent_commit_id: T.nilable(String),
            parent_vm_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end

    CommitListParentsResponse =
      T.let(
        Vers::Internal::Type::ArrayOf[
          Vers::Models::CommitListParentsResponseItem
        ],
        Vers::Internal::Type::Converter
      )
  end
end
