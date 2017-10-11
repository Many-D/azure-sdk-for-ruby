# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # The fields mapping for Relationships.
    #
    class RelationshipLinkFieldMapping

      include MsRestAzure

      # @return [String] The field name on the Interaction Type.
      attr_accessor :interaction_field_name

      # @return [LinkTypes] Link type. Possible values include: 'UpdateAlways',
      # 'CopyIfNull'
      attr_accessor :link_type

      # @return [String] The field name on the Relationship metadata.
      attr_accessor :relationship_field_name


      #
      # Mapper for RelationshipLinkFieldMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RelationshipLinkFieldMapping',
          type: {
            name: 'Composite',
            class_name: 'RelationshipLinkFieldMapping',
            model_properties: {
              interaction_field_name: {
                required: true,
                serialized_name: 'interactionFieldName',
                type: {
                  name: 'String'
                }
              },
              link_type: {
                required: false,
                serialized_name: 'linkType',
                type: {
                  name: 'Enum',
                  module: 'LinkTypes'
                }
              },
              relationship_field_name: {
                required: true,
                serialized_name: 'relationshipFieldName',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
