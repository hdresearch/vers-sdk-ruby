# frozen_string_literal: true

module Vers
  module Models
    module Orchestrator
      class NewRootRequest < Vers::Internal::Type::BaseModel
        # @!attribute vm_config
        #   Struct representing configuration options common to all VMs
        #
        #   @return [Vers::Models::Orchestrator::NewRootRequest::VmConfig]
        required :vm_config, -> { Vers::Orchestrator::NewRootRequest::VmConfig }

        # @!method initialize(vm_config:)
        #   @param vm_config [Vers::Models::Orchestrator::NewRootRequest::VmConfig] Struct representing configuration options common to all VMs

        # @see Vers::Models::Orchestrator::NewRootRequest#vm_config
        class VmConfig < Vers::Internal::Type::BaseModel
          # @!attribute fs_size_mib
          #   The disk size, in MiB.
          #
          #   @return [Integer, nil]
          optional :fs_size_mib, Integer, nil?: true

          # @!attribute image_name
          #   The filesystem base image name. Currently, must be 'default'
          #
          #   @return [String, nil]
          optional :image_name, String, nil?: true

          # @!attribute kernel_name
          #   The kernel name. Currently, must be 'default.bin'
          #
          #   @return [String, nil]
          optional :kernel_name, String, nil?: true

          # @!attribute mem_size_mib
          #   The RAM size, in MiB.
          #
          #   @return [Integer, nil]
          optional :mem_size_mib, Integer, nil?: true

          # @!attribute vcpu_count
          #   How many vCPUs to allocate to this VM (and its children)
          #
          #   @return [Integer, nil]
          optional :vcpu_count, Integer, nil?: true

          # @!method initialize(fs_size_mib: nil, image_name: nil, kernel_name: nil, mem_size_mib: nil, vcpu_count: nil)
          #   Struct representing configuration options common to all VMs
          #
          #   @param fs_size_mib [Integer, nil] The disk size, in MiB.
          #
          #   @param image_name [String, nil] The filesystem base image name. Currently, must be 'default'
          #
          #   @param kernel_name [String, nil] The kernel name. Currently, must be 'default.bin'
          #
          #   @param mem_size_mib [Integer, nil] The RAM size, in MiB.
          #
          #   @param vcpu_count [Integer, nil] How many vCPUs to allocate to this VM (and its children)
        end
      end
    end
  end
end
