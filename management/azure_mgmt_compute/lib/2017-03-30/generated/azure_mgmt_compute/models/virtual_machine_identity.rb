# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2017_03_30
  module Models
    #
    # Identity for the virtual machine.
    #
    class VirtualMachineIdentity

      include MsRestAzure

      # @return [String] The principal id of virtual machine identity.
      attr_accessor :principal_id

      # @return [String] The tenant id associated with the virtual machine.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # virtual machine. Currently, the only supported type is
      # 'SystemAssigned', which implicitly creates an identity. Possible values
      # include: 'SystemAssigned'
      attr_accessor :type


      #
      # Mapper for VirtualMachineIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineIdentity',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineIdentity',
            model_properties: {
              principal_id: {
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end
