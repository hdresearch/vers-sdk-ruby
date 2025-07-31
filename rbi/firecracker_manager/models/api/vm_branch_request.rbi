# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmBranchRequest < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmBranchRequest,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        sig { params(alias_: T.nilable(String)).returns(T.attached_class) }
        def self.new(alias_: nil)
        end

        sig { override.returns({ alias_: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
