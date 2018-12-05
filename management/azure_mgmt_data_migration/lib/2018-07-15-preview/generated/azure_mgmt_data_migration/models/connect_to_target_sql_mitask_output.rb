# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Output for the task that validates connection to Azure SQL Database
    # Managed Instance.
    #
    class ConnectToTargetSqlMITaskOutput

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [String] Target server version
      attr_accessor :target_server_version

      # @return [String] Target server brand version
      attr_accessor :target_server_brand_version

      # @return [Array<String>] List of logins on the target server.
      attr_accessor :logins

      # @return [Array<String>] List of agent jobs on the target server.
      attr_accessor :agent_jobs

      # @return [Array<ReportableException>] Validation errors
      attr_accessor :validation_errors


      #
      # Mapper for ConnectToTargetSqlMITaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToTargetSqlMITaskOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToTargetSqlMITaskOutput',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              target_server_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServerVersion',
                type: {
                  name: 'String'
                }
              },
              target_server_brand_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetServerBrandVersion',
                type: {
                  name: 'String'
                }
              },
              logins: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'logins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              agent_jobs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'agentJobs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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