# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The metric availability.
    #
    class MetricAvailablity

      include MsRestAzure

      # @return [String] The aggregation interval for the metric.
      attr_accessor :time_grain

      # @return [String] The retention period for the metric at the specified
      # timegrain.
      attr_accessor :retention


      #
      # Mapper for MetricAvailablity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricAvailablity',
          type: {
            name: 'Composite',
            class_name: 'MetricAvailablity',
            model_properties: {
              time_grain: {
                required: false,
                serialized_name: 'timeGrain',
                type: {
                  name: 'String'
                }
              },
              retention: {
                required: false,
                serialized_name: 'retention',
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
