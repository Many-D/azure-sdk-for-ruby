# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # Cosmos DB SQL trigger resource object
    #
    class SqlTriggerResource

      include MsRestAzure

      # @return [String] Name of the Cosmos DB SQL trigger
      attr_accessor :id

      # @return [String] Body of the Trigger
      attr_accessor :body

      # @return [TriggerType] Type of the Trigger. Possible values include:
      # 'Pre', 'Post'
      attr_accessor :trigger_type

      # @return [TriggerOperation] The operation the trigger is associated
      # with. Possible values include: 'All', 'Create', 'Update', 'Delete',
      # 'Replace'
      attr_accessor :trigger_operation


      #
      # Mapper for SqlTriggerResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlTriggerResource',
          type: {
            name: 'Composite',
            class_name: 'SqlTriggerResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'body',
                type: {
                  name: 'String'
                }
              },
              trigger_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'triggerType',
                type: {
                  name: 'String'
                }
              },
              trigger_operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'triggerOperation',
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
