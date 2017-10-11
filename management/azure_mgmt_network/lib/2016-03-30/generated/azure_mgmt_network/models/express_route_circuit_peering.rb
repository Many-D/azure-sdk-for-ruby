# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_03_30
  module Models
    #
    # Peering in a ExpressRouteCircuit resource
    #
    class ExpressRouteCircuitPeering < SubResource

      include MsRestAzure

      # @return [ExpressRouteCircuitPeeringType] Gets or sets PeeringType.
      # Possible values include: 'AzurePublicPeering', 'AzurePrivatePeering',
      # 'MicrosoftPeering'
      attr_accessor :peering_type

      # @return [ExpressRouteCircuitPeeringState] Gets or sets state of
      # Peering. Possible values include: 'Disabled', 'Enabled'
      attr_accessor :state

      # @return [Integer] Gets or sets the azure ASN
      attr_accessor :azure_asn

      # @return [Integer] Gets or sets the peer ASN
      attr_accessor :peer_asn

      # @return [String] Gets or sets the primary address prefix
      attr_accessor :primary_peer_address_prefix

      # @return [String] Gets or sets the secondary address prefix
      attr_accessor :secondary_peer_address_prefix

      # @return [String] Gets or sets the primary port
      attr_accessor :primary_azure_port

      # @return [String] Gets or sets the secondary port
      attr_accessor :secondary_azure_port

      # @return [String] Gets or sets the shared key
      attr_accessor :shared_key

      # @return [Integer] Gets or sets the vlan id
      attr_accessor :vlan_id

      # @return [ExpressRouteCircuitPeeringConfig] Gets or sets the mircosoft
      # peering config
      attr_accessor :microsoft_peering_config

      # @return [ExpressRouteCircuitStats] Gets or peering stats
      attr_accessor :stats

      # @return [String] Gets or sets Provisioning state of the PublicIP
      # resource Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ExpressRouteCircuitPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExpressRouteCircuitPeering',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteCircuitPeering',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              peering_type: {
                required: false,
                serialized_name: 'properties.peeringType',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              azure_asn: {
                required: false,
                serialized_name: 'properties.azureASN',
                type: {
                  name: 'Number'
                }
              },
              peer_asn: {
                required: false,
                serialized_name: 'properties.peerASN',
                type: {
                  name: 'Number'
                }
              },
              primary_peer_address_prefix: {
                required: false,
                serialized_name: 'properties.primaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              secondary_peer_address_prefix: {
                required: false,
                serialized_name: 'properties.secondaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              primary_azure_port: {
                required: false,
                serialized_name: 'properties.primaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              secondary_azure_port: {
                required: false,
                serialized_name: 'properties.secondaryAzurePort',
                type: {
                  name: 'String'
                }
              },
              shared_key: {
                required: false,
                serialized_name: 'properties.sharedKey',
                type: {
                  name: 'String'
                }
              },
              vlan_id: {
                required: false,
                serialized_name: 'properties.vlanId',
                type: {
                  name: 'Number'
                }
              },
              microsoft_peering_config: {
                required: false,
                serialized_name: 'properties.microsoftPeeringConfig',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitPeeringConfig'
                }
              },
              stats: {
                required: false,
                serialized_name: 'properties.stats',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitStats'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
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
