# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement::Api_2016_07_01_preview
  module Models
    #
    # Parameter collection for operations on arm node resource.
    #
    class NodeParameters

      include MsRestAzure

      # @return [String] Location of the resource.
      attr_accessor :location

      # @return Resource tags.
      attr_accessor :tags

      # @return [String] Gateway ID which will manage this node.
      attr_accessor :gateway_id

      # @return [String] myhost.domain.com
      attr_accessor :connection_name

      # @return [String] User name to be used to connect to node.
      attr_accessor :user_name

      # @return [String] Password associated with user name.
      attr_accessor :password


      #
      # Mapper for NodeParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NodeParameters',
          type: {
            name: 'Composite',
            class_name: 'NodeParameters',
            model_properties: {
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              },
              gateway_id: {
                required: false,
                serialized_name: 'properties.gatewayId',
                type: {
                  name: 'String'
                }
              },
              connection_name: {
                required: false,
                serialized_name: 'properties.connectionName',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
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
