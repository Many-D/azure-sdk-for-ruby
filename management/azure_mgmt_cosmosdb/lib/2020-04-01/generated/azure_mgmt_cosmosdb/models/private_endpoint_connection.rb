# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # A private endpoint connection
    #
    class PrivateEndpointConnection < ProxyResource

      include MsRestAzure

      # @return [PrivateEndpointProperty] Private endpoint which the connection
      # belongs to.
      attr_accessor :private_endpoint

      # @return [PrivateLinkServiceConnectionStateProperty] Connection State of
      # the Private Endpoint Connection.
      attr_accessor :private_link_service_connection_state


      #
      # Mapper for PrivateEndpointConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpointConnection',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpointConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              private_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateEndpoint',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateEndpointProperty'
                }
              },
              private_link_service_connection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateLinkServiceConnectionState',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServiceConnectionStateProperty'
                }
              }
            }
          }
        }
      end
    end
  end
end
