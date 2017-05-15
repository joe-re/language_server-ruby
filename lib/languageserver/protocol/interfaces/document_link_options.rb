module Languageserver
  module Protocol
    module Interfaces
      #
      # Document link options
      #
      class DocumentLinkOptions
        def initialize(resolve_provider: nil)
          @attributes = {}

          @attributes[:resolveProvider] = resolve_provider if resolve_provider

          @attributes.freeze
        end

        #
        # Document links have a resolve provider as well.
        #
        # @return [boolean]
        def resolve_provider
          attributes.fetch(:resolveProvider)
        end

        attr_reader :attributes

        def to_json(*args)
          attributes.to_json(*args)
        end
      end
    end
  end
end
