# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Properties for retargeting a virtual machine schedule.
    #
    class RetargetScheduleProperties

      include MsRestAzure

      # @return [String] The resource Id of the virtual machine on which the
      # schedule operates
      attr_accessor :current_resource_id

      # @return [String] The resource Id of the virtual machine that the
      # schedule should be retargeted to
      attr_accessor :target_resource_id


      #
      # Mapper for RetargetScheduleProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RetargetScheduleProperties',
          type: {
            name: 'Composite',
            class_name: 'RetargetScheduleProperties',
            model_properties: {
              current_resource_id: {
                required: false,
                serialized_name: 'currentResourceId',
                type: {
                  name: 'String'
                }
              },
              target_resource_id: {
                required: false,
                serialized_name: 'targetResourceId',
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
