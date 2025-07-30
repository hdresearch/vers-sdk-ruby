# typed: strong

module FirecrackerManager
  module Models
    module API
      class RootfsListResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::RootfsListResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :rootfs_names

        sig { params(rootfs_names: T::Array[String]).returns(T.attached_class) }
        def self.new(rootfs_names:)
        end

        sig { override.returns({ rootfs_names: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
