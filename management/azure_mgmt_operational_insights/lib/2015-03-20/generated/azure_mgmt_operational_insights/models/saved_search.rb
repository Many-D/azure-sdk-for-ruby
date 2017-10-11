# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::OperationalInsights::Api_2015_03_20
  module Models
    #
    # Value object for saved search results.
    #
    class SavedSearch

      include MsRestAzure

      # @return [String] The id of the saved search.
      attr_accessor :id

      # @return [String] The etag of the saved search.
      attr_accessor :etag

      # @return [String] The category of the saved search. This helps the user
      # to find a saved search faster.
      attr_accessor :category

      # @return [String] Saved search display name.
      attr_accessor :display_name

      # @return [String] The query expression for the saved search. Please see
      # https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-search-reference
      # for reference.
      attr_accessor :query

      # @return [Integer] The version number of the query lanuage. Only verion
      # 1 is allowed here.
      attr_accessor :version

      # @return [Array<Tag>] The tags attached to the saved search.
      attr_accessor :tags


      #
      # Mapper for SavedSearch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SavedSearch',
          type: {
            name: 'Composite',
            class_name: 'SavedSearch',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              category: {
                required: true,
                serialized_name: 'properties.Category',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'properties.DisplayName',
                type: {
                  name: 'String'
                }
              },
              query: {
                required: true,
                serialized_name: 'properties.Query',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: true,
                serialized_name: 'properties.Version',
                constraints: {
                  InclusiveMaximum: 1,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              tags: {
                required: false,
                serialized_name: 'properties.Tags',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Tag'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
