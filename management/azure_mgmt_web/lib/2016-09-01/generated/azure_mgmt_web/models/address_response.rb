# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_09_01
  module Models
    #
    # Describes main public IP address and any extra virtual IPs.
    #
    class AddressResponse

      include MsRestAzure

      # @return [String] Main public virtual IP.
      attr_accessor :service_ip_address

      # @return [String] Virtual Network internal IP address of the App Service
      # Environment if it is in internal load-balancing mode.
      attr_accessor :internal_ip_address

      # @return [Array<String>] IP addresses appearing on outbound connections.
      attr_accessor :outbound_ip_addresses

      # @return [Array<VirtualIPMapping>] Additional virtual IPs.
      attr_accessor :vip_mappings


      #
      # Mapper for AddressResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AddressResponse',
          type: {
            name: 'Composite',
            class_name: 'AddressResponse',
            model_properties: {
              service_ip_address: {
                required: false,
                serialized_name: 'serviceIpAddress',
                type: {
                  name: 'String'
                }
              },
              internal_ip_address: {
                required: false,
                serialized_name: 'internalIpAddress',
                type: {
                  name: 'String'
                }
              },
              outbound_ip_addresses: {
                required: false,
                serialized_name: 'outboundIpAddresses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vip_mappings: {
                required: false,
                serialized_name: 'vipMappings',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualIPMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualIPMapping'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
