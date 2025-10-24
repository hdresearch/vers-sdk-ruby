# typed: strong

module Vers
  module Models
    module Orchestrator
      class NewRootRequest < Vers::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Vers::Orchestrator::NewRootRequest, Vers::Internal::AnyHash)
          end

        # Struct representing configuration options common to all VMs
        sig { returns(Vers::Orchestrator::NewRootRequest::VmConfig) }
        attr_reader :vm_config

        sig do
          params(
            vm_config: Vers::Orchestrator::NewRootRequest::VmConfig::OrHash
          ).void
        end
        attr_writer :vm_config

        sig do
          params(
            vm_config: Vers::Orchestrator::NewRootRequest::VmConfig::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Struct representing configuration options common to all VMs
          vm_config:
        )
        end

        sig do
          override.returns(
            { vm_config: Vers::Orchestrator::NewRootRequest::VmConfig }
          )
        end
        def to_hash
        end

        class VmConfig < Vers::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Vers::Orchestrator::NewRootRequest::VmConfig,
                Vers::Internal::AnyHash
              )
            end

          # The disk size, in MiB.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :fs_size_mib

          # The filesystem base image name. Currently, must be 'default'
          sig { returns(T.nilable(String)) }
          attr_accessor :image_name

          # The kernel name. Currently, must be 'default.bin'
          sig { returns(T.nilable(String)) }
          attr_accessor :kernel_name

          # The RAM size, in MiB.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :mem_size_mib

          # How many vCPUs to allocate to this VM (and its children)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :vcpu_count

          # Struct representing configuration options common to all VMs
          sig do
            params(
              fs_size_mib: T.nilable(Integer),
              image_name: T.nilable(String),
              kernel_name: T.nilable(String),
              mem_size_mib: T.nilable(Integer),
              vcpu_count: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The disk size, in MiB.
            fs_size_mib: nil,
            # The filesystem base image name. Currently, must be 'default'
            image_name: nil,
            # The kernel name. Currently, must be 'default.bin'
            kernel_name: nil,
            # The RAM size, in MiB.
            mem_size_mib: nil,
            # How many vCPUs to allocate to this VM (and its children)
            vcpu_count: nil
          )
          end

          sig do
            override.returns(
              {
                fs_size_mib: T.nilable(Integer),
                image_name: T.nilable(String),
                kernel_name: T.nilable(String),
                mem_size_mib: T.nilable(Integer),
                vcpu_count: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
