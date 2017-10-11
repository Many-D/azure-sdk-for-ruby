# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph::Api_1_6
  module Models
    #
    # Active Directory group information.
    #
    class ADGroup

      include MsRestAzure

      # @return [String] The object ID.
      attr_accessor :object_id

      # @return [String] The object type.
      attr_accessor :object_type

      # @return [String] The display name of the group.
      attr_accessor :display_name

      # @return [Boolean] Whether the group is security-enable.
      attr_accessor :security_enabled

      # @return [String] The primary email address of the group.
      attr_accessor :mail


      #
      # Mapper for ADGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ADGroup',
          type: {
            name: 'Composite',
            class_name: 'ADGroup',
            model_properties: {
              object_id: {
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              object_type: {
                required: false,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              security_enabled: {
                required: false,
                serialized_name: 'securityEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              mail: {
                required: false,
                serialized_name: 'mail',
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
