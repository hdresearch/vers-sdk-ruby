# typed: strong

module FirecrackerManager
  module Models
    module API
      class ClusterCreateParams < FirecrackerManager::Internal::Type::BaseModel
        extend FirecrackerManager::Internal::Type::RequestParameters::Converter
        include FirecrackerManager::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              FirecrackerManager::API::ClusterCreateParams,
              FirecrackerManager::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              FirecrackerManager::API::ClusterCreateParams::NewClusterParams,
              FirecrackerManager::API::ClusterCreateParams::ClusterFromCommitParams
            )
          )
        end
        attr_accessor :cluster_create_params

        sig do
          params(
            cluster_create_params:
              T.any(
                FirecrackerManager::API::ClusterCreateParams::NewClusterParams::OrHash,
                FirecrackerManager::API::ClusterCreateParams::ClusterFromCommitParams::OrHash
              ),
            request_options: FirecrackerManager::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cluster_create_params:, request_options: {})
        end

        sig do
          override.returns(
            {
              cluster_create_params:
                T.any(
                  FirecrackerManager::API::ClusterCreateParams::NewClusterParams,
                  FirecrackerManager::API::ClusterCreateParams::ClusterFromCommitParams
                ),
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
