# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_08_01
  module Models
    #
    # P2SConnectionConfiguration Resource.
    #
    class P2SConnectionConfiguration < SubResource

      include MsRestAzure

      # @return [AddressSpace] The reference of the address space resource
      # which represents Address space for P2S VpnClient.
      attr_accessor :vpn_client_address_pool

      # @return [ProvisioningState] The provisioning state of the
      # P2SConnectionConfiguration resource. Possible values include:
      # 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for P2SConnectionConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'P2SConnectionConfiguration',
          type: {
            name: 'Composite',
            class_name: 'P2SConnectionConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              vpn_client_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnClientAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
