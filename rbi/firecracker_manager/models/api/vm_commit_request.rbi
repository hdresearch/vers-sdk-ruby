# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmCommitRequest < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmCommitRequest,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :tags

        sig do
          params(tags: T.nilable(T::Array[String])).returns(T.attached_class)
        end
        def self.new(tags: nil)
        end

        sig { override.returns({ tags: T.nilable(T::Array[String]) }) }
        def to_hash
        end
      end
    end
  end
end
