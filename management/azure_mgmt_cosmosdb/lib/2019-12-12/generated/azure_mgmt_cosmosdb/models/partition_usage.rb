# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The partition level usage data for a usage request.
    #
    class PartitionUsage < Usage

      include MsRestAzure

      # @return [String] The partition id (GUID identifier) of the usages.
      attr_accessor :partition_id

      # @return [String] The partition key range id (integer identifier) of the
      # usages.
      attr_accessor :partition_key_range_id


      #
      # Mapper for PartitionUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionUsage',
          type: {
            name: 'Composite',
            class_name: 'PartitionUsage',
            model_properties: {
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'MetricName'
                }
              },
              quota_period: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'quotaPeriod',
                type: {
                  name: 'String'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'partitionId',
                type: {
                  name: 'String'
                }
              },
              partition_key_range_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'partitionKeyRangeId',
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
