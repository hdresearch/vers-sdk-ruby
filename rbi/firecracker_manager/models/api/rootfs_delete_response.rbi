# typed: strong

module FirecrackerManager
  module Models
    module API
      class RootfsDeleteResponse < FirecrackerManager::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::RootfsDeleteResponse,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :rootfs_name

        sig { params(rootfs_name: String).returns(T.attached_class) }
        def self.new(rootfs_name:)
        end

        sig { override.returns({ rootfs_name: String }) }
        def to_hash
        end
      end
    end
  end
end
