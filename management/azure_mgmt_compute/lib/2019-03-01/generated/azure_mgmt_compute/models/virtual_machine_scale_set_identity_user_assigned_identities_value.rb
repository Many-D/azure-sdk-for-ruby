# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Model object.
    #
    #
    class VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue

      include MsRestAzure

      # @return [String] The principal id of user assigned identity.
      attr_accessor :principal_id

      # @return [String] The client id of user assigned identity.
      attr_accessor :client_id


      #
      # Mapper for VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetIdentity_userAssignedIdentitiesValue',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'clientId',
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
