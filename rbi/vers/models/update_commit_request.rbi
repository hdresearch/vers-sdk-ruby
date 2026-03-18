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

      # Request body for PATCH /commits/{commit_id}
      sig { params(is_public: T::Boolean).returns(T.attached_class) }
      def self.new(is_public:)
      end

      sig { override.returns({ is_public: T::Boolean }) }
      def to_hash
      end
    end
  end
end
