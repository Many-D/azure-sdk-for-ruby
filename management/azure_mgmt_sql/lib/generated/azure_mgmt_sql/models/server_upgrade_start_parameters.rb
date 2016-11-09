# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Start Azure SQL Server Upgrade parameters.
    #
    class ServerUpgradeStartParameters

      include MsRestAzure

      # @return [String] The version for the Azure SQL Server being upgraded.
      # Default value: '12.0' .
      attr_accessor :version

      # @return [DateTime] The earliest time to upgrade the Azure SQL Server
      # (ISO8601 format).
      attr_accessor :schedule_upgrade_after_utc_date_time

      # @return [Array<RecommendedDatabaseProperties>] The collection of
      # recommended database properties to upgrade the Azure SQL Server.
      attr_accessor :database_collection

      # @return [Array<UpgradeRecommendedElasticPoolProperties>] The
      # collection of recommended elastic pool properties to upgrade the
      # Azure SQL Server.
      attr_accessor :elastic_pool_collection


      #
      # Mapper for ServerUpgradeStartParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerUpgradeStartParameters',
          type: {
            name: 'Composite',
            class_name: 'ServerUpgradeStartParameters',
            model_properties: {
              version: {
                required: true,
                is_constant: true,
                serialized_name: 'serverUpgradeProperties.Version',
                default_value: '12.0',
                type: {
                  name: 'String'
                }
              },
              schedule_upgrade_after_utc_date_time: {
                required: false,
                serialized_name: 'serverUpgradeProperties.ScheduleUpgradeAfterUtcDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              database_collection: {
                required: false,
                serialized_name: 'serverUpgradeProperties.DatabaseCollection',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecommendedDatabasePropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedDatabaseProperties'
                      }
                  }
                }
              },
              elastic_pool_collection: {
                required: false,
                serialized_name: 'serverUpgradeProperties.ElasticPoolCollection',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'UpgradeRecommendedElasticPoolPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UpgradeRecommendedElasticPoolProperties'
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
