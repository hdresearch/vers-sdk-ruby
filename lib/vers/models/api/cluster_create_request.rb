# frozen_string_literal: true

module Vers
  module Models
    module API
      module ClusterCreateRequest
        extend Vers::Internal::Type::Union

        variant -> { Vers::API::ClusterCreateRequest::NewClusterParams }

        variant -> { Vers::API::ClusterCreateRequest::ClusterFromCommitParams }

        class NewClusterParams < Vers::Internal::Type::BaseModel
          # @!attribute cluster_type
          #
          #   @return [Symbol, Vers::Models::API::ClusterCreateRequest::NewClusterParams::ClusterType]
          required :cluster_type, enum: -> { Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType }

          # @!attribute params
          #
          #   @return [Vers::Models::API::ClusterCreateRequest::NewClusterParams::Params]
          required :params, -> { Vers::API::ClusterCreateRequest::NewClusterParams::Params }

          # @!method initialize(cluster_type:, params:)
          #   @param cluster_type [Symbol, Vers::Models::API::ClusterCreateRequest::NewClusterParams::ClusterType]
          #   @param params [Vers::Models::API::ClusterCreateRequest::NewClusterParams::Params]

          # @see Vers::Models::API::ClusterCreateRequest::NewClusterParams#cluster_type
          module ClusterType
            extend Vers::Internal::Type::Enum

            NEW = :new

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Vers::Models::API::ClusterCreateRequest::NewClusterParams#params
          class Params < Vers::Internal::Type::BaseModel
            # @!attribute cluster_alias
            #
            #   @return [String, nil]
            optional :cluster_alias, String, nil?: true

            # @!attribute fs_size_cluster_mib
            #   The amount of total space to allocate to the cluster
            #
            #   @return [Integer, nil]
            optional :fs_size_cluster_mib, Integer, nil?: true

            # @!attribute fs_size_vm_mib
            #   The size of the VM filesystem (if smaller than the base image + overhead, will
            #   cause an error)
            #
            #   @return [Integer, nil]
            optional :fs_size_vm_mib, Integer, nil?: true

            # @!attribute kernel_name
            #
            #   @return [String, nil]
            optional :kernel_name, String, nil?: true

            # @!attribute mem_size_mib
            #
            #   @return [Integer, nil]
            optional :mem_size_mib, Integer, nil?: true

            # @!attribute rootfs_name
            #
            #   @return [String, nil]
            optional :rootfs_name, String, nil?: true

            # @!attribute vcpu_count
            #
            #   @return [Integer, nil]
            optional :vcpu_count, Integer, nil?: true

            # @!attribute vm_alias
            #
            #   @return [String, nil]
            optional :vm_alias, String, nil?: true

            # @!method initialize(cluster_alias: nil, fs_size_cluster_mib: nil, fs_size_vm_mib: nil, kernel_name: nil, mem_size_mib: nil, rootfs_name: nil, vcpu_count: nil, vm_alias: nil)
            #   Some parameter documentations has been truncated, see
            #   {Vers::Models::API::ClusterCreateRequest::NewClusterParams::Params} for more
            #   details.
            #
            #   @param cluster_alias [String, nil]
            #
            #   @param fs_size_cluster_mib [Integer, nil] The amount of total space to allocate to the cluster
            #
            #   @param fs_size_vm_mib [Integer, nil] The size of the VM filesystem (if smaller than the base image + overhead, will c
            #
            #   @param kernel_name [String, nil]
            #
            #   @param mem_size_mib [Integer, nil]
            #
            #   @param rootfs_name [String, nil]
            #
            #   @param vcpu_count [Integer, nil]
            #
            #   @param vm_alias [String, nil]
          end
        end

        class ClusterFromCommitParams < Vers::Internal::Type::BaseModel
          # @!attribute cluster_type
          #
          #   @return [Symbol, Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType]
          required :cluster_type, enum: -> { Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType }

          # @!attribute params
          #
          #   @return [Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams::Params]
          required :params, -> { Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params }

          # @!method initialize(cluster_type:, params:)
          #   @param cluster_type [Symbol, Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType]
          #   @param params [Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams::Params]

          # @see Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams#cluster_type
          module ClusterType
            extend Vers::Internal::Type::Enum

            FROM_COMMIT = :from_commit

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams#params
          class Params < Vers::Internal::Type::BaseModel
            # @!attribute commit_key
            #
            #   @return [String]
            required :commit_key, String

            # @!attribute cluster_alias
            #
            #   @return [String, nil]
            optional :cluster_alias, String, nil?: true

            # @!attribute fs_size_cluster_mib
            #
            #   @return [Integer, nil]
            optional :fs_size_cluster_mib, Integer, nil?: true

            # @!attribute vm_alias
            #
            #   @return [String, nil]
            optional :vm_alias, String, nil?: true

            # @!method initialize(commit_key:, cluster_alias: nil, fs_size_cluster_mib: nil, vm_alias: nil)
            #   @param commit_key [String]
            #   @param cluster_alias [String, nil]
            #   @param fs_size_cluster_mib [Integer, nil]
            #   @param vm_alias [String, nil]
          end
        end

        # @!method self.variants
        #   @return [Array(Vers::Models::API::ClusterCreateRequest::NewClusterParams, Vers::Models::API::ClusterCreateRequest::ClusterFromCommitParams)]
      end
    end
  end
end
