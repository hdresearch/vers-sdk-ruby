# typed: strong

module FirecrackerManager
  module Models
    module API
      class VmRetrieveParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::VmRetrieveParams,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig do
          params(
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns(
            { request_options: FirecrackerManager::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
