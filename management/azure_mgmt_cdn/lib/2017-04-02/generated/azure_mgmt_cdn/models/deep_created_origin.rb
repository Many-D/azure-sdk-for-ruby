# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN::Api_2017_04_02
  module Models
    #
    # The main origin of CDN content which is added when creating a CDN
    # endpoint.
    #
    class DeepCreatedOrigin

      include MsRestAzure

      # @return [String] Origin name
      attr_accessor :name

      # @return [String] The address of the origin. It can be a domain name,
      # IPv4 address, or IPv6 address.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535
      attr_accessor :http_port

      # @return [Integer] The value of the HTTPS port. Must be between 1 and
      # 65535
      attr_accessor :https_port


      #
      # Mapper for DeepCreatedOrigin class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeepCreatedOrigin',
          type: {
            name: 'Composite',
            class_name: 'DeepCreatedOrigin',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                required: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                required: false,
                serialized_name: 'properties.httpPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                required: false,
                serialized_name: 'properties.httpsPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
