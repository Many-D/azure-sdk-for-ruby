# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # Storage Profile properties of a server
    #
    class StorageProfile

      include MsRestAzure

      # @return [Integer] Backup retention days for the server.
      attr_accessor :backup_retention_days

      # @return [GeoRedundantBackup] Enable Geo-redundant or not for server
      # backup. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :geo_redundant_backup

      # @return [Integer] Max storage allowed for a server.
      attr_accessor :storage_mb


      #
      # Mapper for StorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageProfile',
          type: {
            name: 'Composite',
            class_name: 'StorageProfile',
            model_properties: {
              backup_retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupRetentionDays',
                type: {
                  name: 'Number'
                }
              },
              geo_redundant_backup: {
                client_side_validation: true,
                required: false,
                serialized_name: 'geoRedundantBackup',
                type: {
                  name: 'String'
                }
              },
              storage_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageMB',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
