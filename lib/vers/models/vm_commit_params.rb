# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#commit
    class VmCommitParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute keep_paused
      #   If true, keep VM paused after commit
      #
      #   @return [Boolean, nil]
      optional :keep_paused, Vers::Internal::Type::Boolean

      # @!attribute skip_wait_boot
      #   If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean

      # @!attribute commit_id
      #   If provided, chelsea will use the requested commit UUID. Otherwise, it will
      #   generate a UUID itself.
      #
      #   @return [String, nil]
      optional :commit_id, String, nil?: true

      # @!attribute description
      #   Optional description for the commit.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute name
      #   Optional human-readable name for the commit. Defaults to auto-generated name if
      #   not provided.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(vm_id:, keep_paused: nil, skip_wait_boot: nil, commit_id: nil, description: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Vers::Models::VmCommitParams} for more details.
      #
      #   @param vm_id [String]
      #
      #   @param keep_paused [Boolean] If true, keep VM paused after commit
      #
      #   @param skip_wait_boot [Boolean] If true, return an error immediately if the VM is still booting. Default: false
      #
      #   @param commit_id [String, nil] If provided, chelsea will use the requested commit UUID. Otherwise, it will gene
      #
      #   @param description [String, nil] Optional description for the commit.
      #
      #   @param name [String, nil] Optional human-readable name for the commit. Defaults to auto-generated name if
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
