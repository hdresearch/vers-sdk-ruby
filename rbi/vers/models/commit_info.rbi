# typed: strong

module Vers
  module Models
    class CommitInfo < Vers::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Vers::CommitInfo, Vers::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :commit_id

      sig { returns(String) }
      attr_accessor :created_at

      sig { returns(T::Boolean) }
      attr_accessor :is_public

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :owner_id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :grandparent_commit_id

      sig { returns(T.nilable(String)) }
      attr_accessor :parent_vm_id

      sig do
        params(
          commit_id: String,
          created_at: String,
          is_public: T::Boolean,
          name: String,
          owner_id: String,
          description: T.nilable(String),
          grandparent_commit_id: T.nilable(String),
          parent_vm_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        commit_id:,
        created_at:,
        is_public:,
        name:,
        owner_id:,
        description: nil,
        grandparent_commit_id: nil,
        parent_vm_id: nil
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            created_at: String,
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
  end
end
