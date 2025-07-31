# typed: strong

module Vers
  module Models
    module API
      module ClusterCreateRequest
        extend Vers::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Vers::API::ClusterCreateRequest::NewClusterParams,
              Vers::API::ClusterCreateRequest::ClusterFromCommitParams
            )
          end

        class NewClusterParams < Vers::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Vers::API::ClusterCreateRequest::NewClusterParams,
                Vers::Internal::AnyHash
              )
            end

          sig do
            returns(
              Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType::OrSymbol
            )
          end
          attr_accessor :cluster_type

          sig do
            returns(Vers::API::ClusterCreateRequest::NewClusterParams::Params)
          end
          attr_reader :params

          sig do
            params(
              params:
                Vers::API::ClusterCreateRequest::NewClusterParams::Params::OrHash
            ).void
          end
          attr_writer :params

          sig do
            params(
              cluster_type:
                Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType::OrSymbol,
              params:
                Vers::API::ClusterCreateRequest::NewClusterParams::Params::OrHash
            ).returns(T.attached_class)
          end
          def self.new(cluster_type:, params:)
          end

          sig do
            override.returns(
              {
                cluster_type:
                  Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType::OrSymbol,
                params:
                  Vers::API::ClusterCreateRequest::NewClusterParams::Params
              }
            )
          end
          def to_hash
          end

          module ClusterType
            extend Vers::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW =
              T.let(
                :new,
                Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Vers::API::ClusterCreateRequest::NewClusterParams::ClusterType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Params < Vers::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Vers::API::ClusterCreateRequest::NewClusterParams::Params,
                  Vers::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :cluster_alias

            # The amount of total space to allocate to the cluster
            sig { returns(T.nilable(Integer)) }
            attr_accessor :fs_size_cluster_mib

            # The size of the VM filesystem (if smaller than the base image + overhead, will
            # cause an error)
            sig { returns(T.nilable(Integer)) }
            attr_accessor :fs_size_vm_mib

            sig { returns(T.nilable(String)) }
            attr_accessor :kernel_name

            sig { returns(T.nilable(Integer)) }
            attr_accessor :mem_size_mib

            sig { returns(T.nilable(String)) }
            attr_accessor :rootfs_name

            sig { returns(T.nilable(Integer)) }
            attr_accessor :vcpu_count

            sig { returns(T.nilable(String)) }
            attr_accessor :vm_alias

            sig do
              params(
                cluster_alias: T.nilable(String),
                fs_size_cluster_mib: T.nilable(Integer),
                fs_size_vm_mib: T.nilable(Integer),
                kernel_name: T.nilable(String),
                mem_size_mib: T.nilable(Integer),
                rootfs_name: T.nilable(String),
                vcpu_count: T.nilable(Integer),
                vm_alias: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              cluster_alias: nil,
              # The amount of total space to allocate to the cluster
              fs_size_cluster_mib: nil,
              # The size of the VM filesystem (if smaller than the base image + overhead, will
              # cause an error)
              fs_size_vm_mib: nil,
              kernel_name: nil,
              mem_size_mib: nil,
              rootfs_name: nil,
              vcpu_count: nil,
              vm_alias: nil
            )
            end

            sig do
              override.returns(
                {
                  cluster_alias: T.nilable(String),
                  fs_size_cluster_mib: T.nilable(Integer),
                  fs_size_vm_mib: T.nilable(Integer),
                  kernel_name: T.nilable(String),
                  mem_size_mib: T.nilable(Integer),
                  rootfs_name: T.nilable(String),
                  vcpu_count: T.nilable(Integer),
                  vm_alias: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        class ClusterFromCommitParams < Vers::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams,
                Vers::Internal::AnyHash
              )
            end

          sig do
            returns(
              Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType::OrSymbol
            )
          end
          attr_accessor :cluster_type

          sig do
            returns(
              Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params
            )
          end
          attr_reader :params

          sig do
            params(
              params:
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params::OrHash
            ).void
          end
          attr_writer :params

          sig do
            params(
              cluster_type:
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType::OrSymbol,
              params:
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params::OrHash
            ).returns(T.attached_class)
          end
          def self.new(cluster_type:, params:)
          end

          sig do
            override.returns(
              {
                cluster_type:
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType::OrSymbol,
                params:
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params
              }
            )
          end
          def to_hash
          end

          module ClusterType
            extend Vers::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FROM_COMMIT =
              T.let(
                :from_commit,
                Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams::ClusterType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Params < Vers::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Vers::API::ClusterCreateRequest::ClusterFromCommitParams::Params,
                  Vers::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :commit_key

            sig { returns(T.nilable(String)) }
            attr_accessor :cluster_alias

            sig { returns(T.nilable(Integer)) }
            attr_accessor :fs_size_cluster_mib

            sig { returns(T.nilable(String)) }
            attr_accessor :vm_alias

            sig do
              params(
                commit_key: String,
                cluster_alias: T.nilable(String),
                fs_size_cluster_mib: T.nilable(Integer),
                vm_alias: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              commit_key:,
              cluster_alias: nil,
              fs_size_cluster_mib: nil,
              vm_alias: nil
            )
            end

            sig do
              override.returns(
                {
                  commit_key: String,
                  cluster_alias: T.nilable(String),
                  fs_size_cluster_mib: T.nilable(Integer),
                  vm_alias: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        sig do
          override.returns(T::Array[Vers::API::ClusterCreateRequest::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
