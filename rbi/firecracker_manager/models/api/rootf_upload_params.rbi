# typed: strong

module FirecrackerManager
  module Models
    module API
      class RootfUploadParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::RootfUploadParams,
              FirecrackerManager::Internal::AnyHash
            )
          end

        # The path of the Dockerfile contained within the tar archive
        sig { returns(T.nilable(String)) }
        attr_reader :dockerfile

        sig { params(dockerfile: String).void }
        attr_writer :dockerfile

        sig do
          params(
            dockerfile: String,
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The path of the Dockerfile contained within the tar archive
          dockerfile: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              dockerfile: String,
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
