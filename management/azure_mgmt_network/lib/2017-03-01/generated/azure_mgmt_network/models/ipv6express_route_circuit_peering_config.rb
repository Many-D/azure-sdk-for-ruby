# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_03_01
  module Models
    #
    # Contains IPv6 peering config.
    #
    class Ipv6ExpressRouteCircuitPeeringConfig

      include MsRestAzure

      # @return [String] The primary address prefix.
      attr_accessor :primary_peer_address_prefix

      # @return [String] The secondary address prefix.
      attr_accessor :secondary_peer_address_prefix

      # @return [ExpressRouteCircuitPeeringConfig] The Microsoft peering
      # configuration.
      attr_accessor :microsoft_peering_config

      # @return [RouteFilter] The reference of the RouteFilter resource.
      attr_accessor :route_filter

      # @return [ExpressRouteCircuitPeeringState] The state of peering.
      # Possible values are: 'Disabled' and 'Enabled'. Possible values include:
      # 'Disabled', 'Enabled'
      attr_accessor :state


      #
      # Mapper for Ipv6ExpressRouteCircuitPeeringConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Ipv6ExpressRouteCircuitPeeringConfig',
          type: {
            name: 'Composite',
            class_name: 'Ipv6ExpressRouteCircuitPeeringConfig',
            model_properties: {
              primary_peer_address_prefix: {
                required: false,
                serialized_name: 'primaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              secondary_peer_address_prefix: {
                required: false,
                serialized_name: 'secondaryPeerAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              microsoft_peering_config: {
                required: false,
                serialized_name: 'microsoftPeeringConfig',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitPeeringConfig'
                }
              },
              route_filter: {
                required: false,
                serialized_name: 'routeFilter',
                type: {
                  name: 'Composite',
                  class_name: 'RouteFilter'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
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
