# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Backup engine type when Azure Backup Server is used to manage the
    # backups.
    #
    class AzureBackupServerEngine < BackupEngineBase

      include MsRestAzure


      def initialize
        @backupEngineType = "AzureBackupServerEngine"
      end

      attr_accessor :backupEngineType


      #
      # Mapper for AzureBackupServerEngine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureBackupServerEngine',
          type: {
            name: 'Composite',
            class_name: 'AzureBackupServerEngine',
            model_properties: {
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              backup_engine_state: {
                required: false,
                serialized_name: 'backupEngineState',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                required: false,
                serialized_name: 'backupEngineId',
                type: {
                  name: 'String'
                }
              },
              dpm_version: {
                required: false,
                serialized_name: 'dpmVersion',
                type: {
                  name: 'String'
                }
              },
              azure_backup_agent_version: {
                required: false,
                serialized_name: 'azureBackupAgentVersion',
                type: {
                  name: 'String'
                }
              },
              is_azure_backup_agent_upgrade_available: {
                required: false,
                serialized_name: 'isAzureBackupAgentUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              is_dpmupgrade_available: {
                required: false,
                serialized_name: 'isDPMUpgradeAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BackupEngineExtendedInfo'
                }
              },
              backupEngineType: {
                required: true,
                serialized_name: 'backupEngineType',
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
