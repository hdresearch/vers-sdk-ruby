# typed: strong

module Vers
  module Models
    module API
      class ClusterCreateParams < Vers::Internal::Type::BaseModel
        extend Vers::Internal::Type::RequestParameters::Converter
        include Vers::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Vers::API::ClusterCreateParams, Vers::Internal::AnyHash)
          end

        sig do
          returns(
            T.any(
              Vers::API::ClusterCreateRequest::NewClusterParams,
              Vers::API::ClusterCreateRequest::ClusterFromCommitParams
            )
          )
        end
        attr_accessor :cluster_create_request

        sig do
          params(
            cluster_create_request:
              T.any(
                Vers::API::ClusterCreateRequest::NewClusterParams::OrHash,
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams::OrHash
              ),
            request_options: Vers::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cluster_create_request:, request_options: {})
        end

        sig do
          override.returns(
            {
              cluster_create_request:
                T.any(
                  Vers::API::ClusterCreateRequest::NewClusterParams,
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams
                ),
              request_options: Vers::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
