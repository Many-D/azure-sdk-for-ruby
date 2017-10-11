# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_09_01
  module Models
    #
    # Application gateway probe health response match
    #
    class ApplicationGatewayProbeHealthResponseMatch

      include MsRestAzure

      # @return [String] Body that must be contained in the health response.
      # Default value is empty.
      attr_accessor :body

      # @return [Array<String>] Allowed ranges of healthy status codes. Default
      # range of healthy status codes is 200-399.
      attr_accessor :status_codes


      #
      # Mapper for ApplicationGatewayProbeHealthResponseMatch class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayProbeHealthResponseMatch',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayProbeHealthResponseMatch',
            model_properties: {
              body: {
                required: false,
                serialized_name: 'body',
                type: {
                  name: 'String'
                }
              },
              status_codes: {
                required: false,
                serialized_name: 'statusCodes',
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
              }
            }
          }
        }
      end
    end
  end
end
