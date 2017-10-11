# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2017_04_01
  module Models
    #
    # An Activity Log alert condition that is met by comparing an activity log
    # field and value.
    #
    class ActivityLogAlertLeafCondition

      include MsRestAzure

      # @return [String] The name of the field that this condition will
      # examine. The possible values for this field are (case-insensitive):
      # 'resourceId', 'category', 'caller', 'level', 'operationName',
      # 'resourceGroup', 'resourceProvider', 'status', 'subStatus',
      # 'resourceType', or anything beginning with 'properties.'.
      attr_accessor :field

      # @return [String] The field value will be compared to this value
      # (case-insensitive) to determine if the condition is met.
      attr_accessor :equals


      #
      # Mapper for ActivityLogAlertLeafCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ActivityLogAlertLeafCondition',
          type: {
            name: 'Composite',
            class_name: 'ActivityLogAlertLeafCondition',
            model_properties: {
              field: {
                required: true,
                serialized_name: 'field',
                type: {
                  name: 'String'
                }
              },
              equals: {
                required: true,
                serialized_name: 'equals',
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
