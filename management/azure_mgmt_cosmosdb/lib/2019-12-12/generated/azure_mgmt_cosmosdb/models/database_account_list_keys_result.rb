# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The access keys for the given database account.
    #
    class DatabaseAccountListKeysResult < DatabaseAccountListReadOnlyKeysResult

      include MsRestAzure

      # @return [String] Base 64 encoded value of the primary read-write key.
      attr_accessor :primary_master_key

      # @return [String] Base 64 encoded value of the secondary read-write key.
      attr_accessor :secondary_master_key


      #
      # Mapper for DatabaseAccountListKeysResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseAccountListKeysResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseAccountListKeysResult',
            model_properties: {
              primary_readonly_master_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primaryReadonlyMasterKey',
                type: {
                  name: 'String'
                }
              },
              secondary_readonly_master_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondaryReadonlyMasterKey',
                type: {
                  name: 'String'
                }
              },
              primary_master_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primaryMasterKey',
                type: {
                  name: 'String'
                }
              },
              secondary_master_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondaryMasterKey',
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
