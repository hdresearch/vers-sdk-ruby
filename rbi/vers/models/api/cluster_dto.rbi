# typed: strong

module Vers
  module Models
    module API
      class ClusterDto < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Vers::API::ClusterDto, Vers::Internal::AnyHash) }

        # The cluster's ID.
        sig { returns(String) }
        attr_accessor :id

        # The size of the cluster's backing file
        sig { returns(Integer) }
        attr_accessor :fs_size_mib

        # The ID of the cluster's root VM.
        sig { returns(String) }
        attr_accessor :root_vm_id

        # How many VMs are currently running on this cluster.
        sig { returns(Integer) }
        attr_accessor :vm_count

        # The VMs that are children of the cluster, including the root VM.
        sig { returns(T::Array[Vers::API::VmDto]) }
        attr_accessor :vms

        # Human-readable name assigned to the cluster.
        sig { returns(T.nilable(String)) }
        attr_accessor :alias_

        sig do
          params(
            id: String,
            fs_size_mib: Integer,
            root_vm_id: String,
            vm_count: Integer,
            vms: T::Array[Vers::API::VmDto::OrHash],
            alias_: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The cluster's ID.
          id:,
          # The size of the cluster's backing file
          fs_size_mib:,
          # The ID of the cluster's root VM.
          root_vm_id:,
          # How many VMs are currently running on this cluster.
          vm_count:,
          # The VMs that are children of the cluster, including the root VM.
          vms:,
          # Human-readable name assigned to the cluster.
          alias_: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              fs_size_mib: Integer,
              root_vm_id: String,
              vm_count: Integer,
              vms: T::Array[Vers::API::VmDto],
              alias_: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
