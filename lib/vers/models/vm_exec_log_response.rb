# frozen_string_literal: true

module Vers
  module Models
    # @see Vers::Resources::Vm#get_logs
    class VmExecLogResponse < Vers::Internal::Type::BaseModel
      # @!attribute entries
      #   Returned log entries.
      #
      #   @return [Array<Vers::Models::VmExecLogResponse::Entry>]
      required :entries, -> { Vers::Internal::Type::ArrayOf[Vers::VmExecLogResponse::Entry] }

      # @!attribute eof
      #   True when the end of file was reached.
      #
      #   @return [Boolean]
      required :eof, Vers::Internal::Type::Boolean

      # @!attribute next_offset
      #   Next byte offset to continue from.
      #
      #   @return [Integer]
      required :next_offset, Integer

      # @!method initialize(entries:, eof:, next_offset:)
      #   Response for exec log tail requests.
      #
      #   @param entries [Array<Vers::Models::VmExecLogResponse::Entry>] Returned log entries.
      #
      #   @param eof [Boolean] True when the end of file was reached.
      #
      #   @param next_offset [Integer] Next byte offset to continue from.

      class Entry < Vers::Internal::Type::BaseModel
        # @!attribute data_b64
        #   Base64-encoded bytes from stdout/stderr chunk.
        #
        #   @return [String]
        required :data_b64, String

        # @!attribute stream
        #   Streams available for exec logging.
        #
        #   @return [Symbol, Vers::Models::VmExecLogResponse::Entry::Stream]
        required :stream, enum: -> { Vers::VmExecLogResponse::Entry::Stream }

        # @!attribute timestamp
        #
        #   @return [String]
        required :timestamp, String

        # @!attribute exec_id
        #
        #   @return [String, nil]
        optional :exec_id, String, nil?: true

        # @!method initialize(data_b64:, stream:, timestamp:, exec_id: nil)
        #   Individual log entry describing emitted stdout/stderr chunk.
        #
        #   @param data_b64 [String] Base64-encoded bytes from stdout/stderr chunk.
        #
        #   @param stream [Symbol, Vers::Models::VmExecLogResponse::Entry::Stream] Streams available for exec logging.
        #
        #   @param timestamp [String]
        #
        #   @param exec_id [String, nil]

        # Streams available for exec logging.
        #
        # @see Vers::Models::VmExecLogResponse::Entry#stream
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
end
