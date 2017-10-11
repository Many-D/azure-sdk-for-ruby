# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::KeyVault::Api_2015_06_01
  module Models
    #
    # Parameters for creating or updating a vault
    #
    class VaultCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] The supported Azure location where the key vault
      # should be created.
      attr_accessor :location

      # @return [Hash{String => String}] The tags that will be assigned to the
      # key vault.
      attr_accessor :tags

      # @return [VaultProperties] Properties of the vault
      attr_accessor :properties


      #
      # Mapper for VaultCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'VaultCreateOrUpdateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              properties: {
                required: true,
                serialized_name: 'properties',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'VaultProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
