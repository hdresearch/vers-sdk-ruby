# typed: strong

module Vers
  module Models
    class SetRepositoryVisibilityRequest < Vers::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Vers::SetRepositoryVisibilityRequest, Vers::Internal::AnyHash)
        end

      # Whether the repository should be publicly visible
      sig { returns(T::Boolean) }
      attr_accessor :is_public

      # Request body for PATCH /api/v1/repositories/{repo_name}/visibility
      sig { params(is_public: T::Boolean).returns(T.attached_class) }
      def self.new(
        # Whether the repository should be publicly visible
        is_public:
      )
      end

      sig { override.returns({ is_public: T::Boolean }) }
      def to_hash
      end
    end
  end
end
