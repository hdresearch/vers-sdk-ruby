# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#get_logs
    class VmGetLogsParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      # @!attribute vm_id
      #
      #   @return [String]
      required :vm_id, String

      # @!attribute max_entries
      #   Maximum number of log entries to return
      #
      #   @return [Integer, nil]
      optional :max_entries, Integer

      # @!attribute offset
      #   Byte offset into the log file (default: 0)
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute stream
      #   Filter by 'stdout' or 'stderr'
      #
      #   @return [String, nil]
      optional :stream, String

      # @!method initialize(vm_id:, max_entries: nil, offset: nil, stream: nil, request_options: {})
      #   @param vm_id [String]
      #
      #   @param max_entries [Integer] Maximum number of log entries to return
      #
      #   @param offset [Integer] Byte offset into the log file (default: 0)
      #
      #   @param stream [String] Filter by 'stdout' or 'stderr'
      #
      #   @param request_options [Vers::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
