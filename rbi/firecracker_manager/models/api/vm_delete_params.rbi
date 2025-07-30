# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmDeleteParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmDeleteParams,
              FirecrackerManager::Internal::AnyHash
            )
          end

        # Delete children recursively
        sig { returns(T::Boolean) }
        attr_accessor :recursive

        sig do
          params(
            recursive: T::Boolean,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Delete children recursively
          recursive:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              recursive: T::Boolean,
              request_options: FirecrackerManager::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
