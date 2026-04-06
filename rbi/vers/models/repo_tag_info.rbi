# typed: strong

module Vers
  module Models
    class RepoTagInfo < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Vers::RepoTagInfo, Vers::Internal::AnyHash) }

      # The commit ID this tag currently points to
      sig { returns(String) }
      attr_accessor :commit_id

      # When the tag was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Full reference in image_name:tag format
      sig { returns(String) }
      attr_accessor :reference

      # The tag's unique identifier
      sig { returns(String) }
      attr_accessor :tag_id

      # The tag name
      sig { returns(String) }
      attr_accessor :tag_name

      # When the tag was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Optional description
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Tag information within a repository context
      sig do
        params(
          commit_id: String,
          created_at: Time,
          reference: String,
          tag_id: String,
          tag_name: String,
          updated_at: Time,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The commit ID this tag currently points to
        commit_id:,
        # When the tag was created
        created_at:,
        # Full reference in image_name:tag format
        reference:,
        # The tag's unique identifier
        tag_id:,
        # The tag name
        tag_name:,
        # When the tag was last updated
        updated_at:,
        # Optional description
        description: nil
      )
      end

      sig do
        override.returns(
          {
            commit_id: String,
            created_at: Time,
            reference: String,
            tag_id: String,
            tag_name: String,
            updated_at: Time,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
