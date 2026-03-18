# typed: strong

module Vers
  module Models
    class CommitTagDeleteParams < Vers::Internal::Type::BaseModel
      extend Vers::Internal::Type::RequestParameters::Converter
      include Vers::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Vers::CommitTagDeleteParams, Vers::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :tag_name

      sig do
        params(
          tag_name: String,
          request_options: Vers::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(tag_name:, request_options: {})
      end

      sig do
        override.returns(
          { tag_name: String, request_options: Vers::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
