# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization::Api_2015_07_01
  module Models
    #
    # Role definition.
    #
    class RoleDefinition

      include MsRestAzure

      # @return [String] The role definition ID.
      attr_accessor :id

      # @return [String] The role definition name.
      attr_accessor :name

      # @return [String] The role definition type.
      attr_accessor :type

      # @return [RoleDefinitionProperties] Role definition properties.
      attr_accessor :properties


      #
      # Mapper for RoleDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RoleDefinition',
          type: {
            name: 'Composite',
            class_name: 'RoleDefinition',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RoleDefinitionProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
