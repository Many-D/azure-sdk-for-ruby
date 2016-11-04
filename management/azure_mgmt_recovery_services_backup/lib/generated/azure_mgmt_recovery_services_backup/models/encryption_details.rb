# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Details needed if the VM was encrypted at the time of backup.
    #
    class EncryptionDetails

      include MsRestAzure

      # @return [Boolean] Identifies whether this backup copy represents an
      # encrypted VM at the time of backup.
      attr_accessor :encryption_enabled

      # @return [String] Key Url.
      attr_accessor :kek_url

      # @return [String] Secret Url.
      attr_accessor :secret_key_url

      # @return [String] ID of Key Vault where KEK is stored.
      attr_accessor :kek_vault_id

      # @return [String] ID of Key Vault where Secret is stored.
      attr_accessor :secret_key_vault_id


      #
      # Mapper for EncryptionDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EncryptionDetails',
          type: {
            name: 'Composite',
            class_name: 'EncryptionDetails',
            model_properties: {
              encryption_enabled: {
                required: false,
                serialized_name: 'encryptionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              kek_url: {
                required: false,
                serialized_name: 'kekUrl',
                type: {
                  name: 'String'
                }
              },
              secret_key_url: {
                required: false,
                serialized_name: 'secretKeyUrl',
                type: {
                  name: 'String'
                }
              },
              kek_vault_id: {
                required: false,
                serialized_name: 'kekVaultId',
                type: {
                  name: 'String'
                }
              },
              secret_key_vault_id: {
                required: false,
                serialized_name: 'secretKeyVaultId',
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
