# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage::Api_2016_01_01
  module Models
    #
    # An access key for the storage account.
    #
    class StorageAccountKey

      include MsRestAzure

      # @return [String] Name of the key.
      attr_accessor :key_name

      # @return [String] Base 64-encoded value of the key.
      attr_accessor :value

      # @return [KeyPermission] Permissions for the key -- read-only or full
      # permissions. Possible values include: 'READ', 'FULL'
      attr_accessor :permissions


      #
      # Mapper for StorageAccountKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountKey',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountKey',
            model_properties: {
              key_name: {
                required: false,
                read_only: true,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                required: false,
                read_only: true,
                serialized_name: 'permissions',
                type: {
                  name: 'Enum',
                  module: 'KeyPermission'
                }
              }
            }
          }
        }
      end
    end
  end
end
