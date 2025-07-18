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
              Vers::API::ClusterCreateParams::NewClusterParams,
              Vers::API::ClusterCreateParams::ClusterFromCommitParams
            )
          )
        end
        attr_accessor :cluster_create_params

        sig do
          params(
            cluster_create_params:
              T.any(
                Vers::API::ClusterCreateParams::NewClusterParams::OrHash,
                Vers::API::ClusterCreateParams::ClusterFromCommitParams::OrHash
              ),
            request_options: Vers::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(cluster_create_params:, request_options: {})
        end

        sig do
          override.returns(
            {
              cluster_create_params:
                T.any(
                  Vers::API::ClusterCreateParams::NewClusterParams,
                  Vers::API::ClusterCreateParams::ClusterFromCommitParams
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
