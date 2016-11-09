# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    #
    class CheckNameRequest

      include MsRestAzure

      # @return [String] Workspace collection name
      attr_accessor :name

      # @return [String] Resource type. Default value:
      # 'Microsoft.PowerBI/workspaceCollections' .
      attr_accessor :type


      #
      # Mapper for CheckNameRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameRequest',
          type: {
            name: 'Composite',
            class_name: 'CheckNameRequest',
            model_properties: {
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
                default_value: 'Microsoft.PowerBI/workspaceCollections',
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
