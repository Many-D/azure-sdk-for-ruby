# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub
  module Models
    #
    # The properties related to the details of an error.
    #
    class ErrorDetails

      include MsRestAzure

      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The http status code.
      attr_accessor :http_status_code

      # @return [String] The error message.
      attr_accessor :message

      # @return [String] The error details.
      attr_accessor :details


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'Code',
                type: {
                  name: 'String'
                }
              },
              http_status_code: {
                required: false,
                read_only: true,
                serialized_name: 'HttpStatusCode',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'Message',
                type: {
                  name: 'String'
                }
              },
              details: {
                required: false,
                serialized_name: 'Details',
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
