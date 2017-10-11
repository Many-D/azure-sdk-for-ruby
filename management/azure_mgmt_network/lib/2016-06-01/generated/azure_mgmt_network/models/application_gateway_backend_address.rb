# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_06_01
  module Models
    #
    # Backend Address of application gateway
    #
    class ApplicationGatewayBackendAddress

      include MsRestAzure

      # @return [String] Dns name
      attr_accessor :fqdn

      # @return [String] Ip address
      attr_accessor :ip_address


      #
      # Mapper for ApplicationGatewayBackendAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayBackendAddress',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayBackendAddress',
            model_properties: {
              fqdn: {
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                required: false,
                serialized_name: 'ipAddress',
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
