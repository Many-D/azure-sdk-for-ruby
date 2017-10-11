# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerService::Api_2017_01_31
  module Models
    #
    # Profile for diagnostics on the container service VMs.
    #
    class ContainerServiceVMDiagnostics

      include MsRestAzure

      # @return [Boolean] Whether the VM diagnostic agent is provisioned on the
      # VM.
      attr_accessor :enabled

      # @return [String] The URI of the storage account where diagnostics are
      # stored.
      attr_accessor :storage_uri


      #
      # Mapper for ContainerServiceVMDiagnostics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceVMDiagnostics',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceVMDiagnostics',
            model_properties: {
              enabled: {
                required: true,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              storage_uri: {
                required: false,
                read_only: true,
                serialized_name: 'storageUri',
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
