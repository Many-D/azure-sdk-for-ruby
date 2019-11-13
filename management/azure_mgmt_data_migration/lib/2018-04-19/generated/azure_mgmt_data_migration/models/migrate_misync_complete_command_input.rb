# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Input for command that completes online migration for an Azure SQL
    # Database Managed Instance.
    #
    class MigrateMISyncCompleteCommandInput

      include MsRestAzure

      # @return [String] Name of managed instance database
      attr_accessor :source_database_name


      #
      # Mapper for MigrateMISyncCompleteCommandInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateMISyncCompleteCommandInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateMISyncCompleteCommandInput',
            model_properties: {
              source_database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceDatabaseName',
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