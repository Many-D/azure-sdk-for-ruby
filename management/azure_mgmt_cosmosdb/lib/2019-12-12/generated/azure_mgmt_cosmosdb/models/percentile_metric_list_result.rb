# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The response to a list percentile metrics request.
    #
    class PercentileMetricListResult

      include MsRestAzure

      # @return [Array<PercentileMetric>] The list of percentile metrics for
      # the account.
      attr_accessor :value


      #
      # Mapper for PercentileMetricListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PercentileMetricListResult',
          type: {
            name: 'Composite',
            class_name: 'PercentileMetricListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PercentileMetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PercentileMetric'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
