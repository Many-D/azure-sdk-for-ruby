# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # Cosmos DB Cassandra table schema
    #
    class CassandraSchema

      include MsRestAzure

      # @return [Array<Column>] List of Cassandra table columns.
      attr_accessor :columns

      # @return [Array<CassandraPartitionKey>] List of partition key.
      attr_accessor :partition_keys

      # @return [Array<ClusterKey>] List of cluster key.
      attr_accessor :cluster_keys


      #
      # Mapper for CassandraSchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CassandraSchema',
          type: {
            name: 'Composite',
            class_name: 'CassandraSchema',
            model_properties: {
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Column'
                      }
                  }
                }
              },
              partition_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CassandraPartitionKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CassandraPartitionKey'
                      }
                  }
                }
              },
              cluster_keys: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterKeys',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClusterKeyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClusterKey'
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
