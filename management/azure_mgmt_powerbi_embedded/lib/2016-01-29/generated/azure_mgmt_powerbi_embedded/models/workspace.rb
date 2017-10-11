# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded::Api_2016_01_29
  module Models
    #
    # Model object.
    #
    #
    class Workspace

      include MsRestAzure

      # @return [String] Workspace id
      attr_accessor :id

      # @return [String] Workspace name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return Property bag
      attr_accessor :properties


      #
      # Mapper for Workspace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Workspace',
          type: {
            name: 'Composite',
            class_name: 'Workspace',
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
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
