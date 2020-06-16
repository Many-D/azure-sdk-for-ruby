# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The response to a list partition metrics request.
    #
    class PartitionMetricListResult

      include MsRestAzure

      # @return [Array<PartitionMetric>] The list of partition-level metrics
      # for the account.
      attr_accessor :value


      #
      # Mapper for PartitionMetricListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionMetricListResult',
          type: {
            name: 'Composite',
            class_name: 'PartitionMetricListResult',
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
                      serialized_name: 'PartitionMetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PartitionMetric'
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
