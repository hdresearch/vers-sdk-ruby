# frozen_string_literal: true

module FirecrackerManager
  module Models
    module API
      class ClusterPatchParams < FirecrackerManager::Internal::Type::BaseModel
        # @!attribute alias_
        #
        #   @return [String, nil]
        optional :alias_, String, api_name: :alias, nil?: true

        # @!method initialize(alias_: nil)
        #   @param alias_ [String, nil]
      end
    end
  end
end
