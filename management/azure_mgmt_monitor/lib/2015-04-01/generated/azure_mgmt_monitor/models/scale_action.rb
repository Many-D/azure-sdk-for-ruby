# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor::Api_2015_04_01
  module Models
    #
    # The parameters for the scaling action.
    #
    class ScaleAction

      include MsRestAzure

      # @return [ScaleDirection] the scale direction. Whether the scaling
      # action increases or decreases the number of instances. Possible values
      # include: 'None', 'Increase', 'Decrease'
      attr_accessor :direction

      # @return [ScaleType] the type of action that should occur when the scale
      # rule fires. Possible values include: 'ChangeCount',
      # 'PercentChangeCount', 'ExactCount'
      attr_accessor :type

      # @return [String] the number of instances that are involved in the
      # scaling action. This value must be 1 or greater. The default value is
      # 1. Default value: '1' .
      attr_accessor :value

      # @return [Duration] the amount of time to wait since the last scaling
      # action before this action occurs. It must be between 1 week and 1
      # minute in ISO 8601 format.
      attr_accessor :cooldown


      #
      # Mapper for ScaleAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ScaleAction',
          type: {
            name: 'Composite',
            class_name: 'ScaleAction',
            model_properties: {
              direction: {
                required: true,
                serialized_name: 'direction',
                type: {
                  name: 'Enum',
                  module: 'ScaleDirection'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ScaleType'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                default_value: '1',
                type: {
                  name: 'String'
                }
              },
              cooldown: {
                required: true,
                serialized_name: 'cooldown',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
