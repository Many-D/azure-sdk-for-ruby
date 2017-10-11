# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_06_01
  module Models
    #
    # Path rule of URL path map of application gateway
    #
    class ApplicationGatewayPathRule < SubResource

      include MsRestAzure

      # @return [Array<String>] Path rules of URL path map
      attr_accessor :paths

      # @return [SubResource] Backend address pool resource of URL path map
      attr_accessor :backend_address_pool

      # @return [SubResource] Backend http settings resource of URL path map
      attr_accessor :backend_http_settings

      # @return [String] Path rule of URL path map resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for ApplicationGatewayPathRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayPathRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayPathRule',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              paths: {
                required: false,
                serialized_name: 'properties.paths',
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
              backend_address_pool: {
                required: false,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_http_settings: {
                required: false,
                serialized_name: 'properties.backendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
