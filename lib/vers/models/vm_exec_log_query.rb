# frozen_string_literal: true

module Vers
  module Models
    class VmExecLogQuery < Vers::Internal::Type::BaseModel
      # @!attribute max_entries
      #   Maximum number of entries to return (server applies caps).
      #
      #   @return [Integer, nil]
      optional :max_entries, Integer, nil?: true

      # @!attribute offset
      #   Byte offset into the log file to start reading from.
      #
      #   @return [Integer, nil]
      optional :offset, Integer, nil?: true

      # @!attribute skip_wait_boot
      #   Skip waiting for boot state (mirrors exec).
      #
      #   @return [Boolean, nil]
      optional :skip_wait_boot, Vers::Internal::Type::Boolean, nil?: true

      # @!attribute stream
      #   Filter by stream (stdout/stderr). Default: all streams.
      #
      #   @return [Symbol, Vers::Models::VmExecLogQuery::Stream, nil]
      optional :stream, enum: -> { Vers::VmExecLogQuery::Stream }, nil?: true

      # @!method initialize(max_entries: nil, offset: nil, skip_wait_boot: nil, stream: nil)
      #   Query params for GET /api/vm/{vm_id}/exec/logs
      #
      #   @param max_entries [Integer, nil] Maximum number of entries to return (server applies caps).
      #
      #   @param offset [Integer, nil] Byte offset into the log file to start reading from.
      #
      #   @param skip_wait_boot [Boolean, nil] Skip waiting for boot state (mirrors exec).
      #
      #   @param stream [Symbol, Vers::Models::VmExecLogQuery::Stream, nil] Filter by stream (stdout/stderr). Default: all streams.

      # Filter by stream (stdout/stderr). Default: all streams.
      #
      # @see Vers::Models::VmExecLogQuery#stream
      module Stream
        extend Vers::Internal::Type::Enum

        STDOUT = :stdout
        STDERR = :stderr

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
