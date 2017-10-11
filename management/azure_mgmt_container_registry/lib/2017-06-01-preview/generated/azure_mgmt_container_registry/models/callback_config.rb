# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_06_01_preview
  module Models
    #
    # The configuration of service URI and custom headers for the webhook.
    #
    class CallbackConfig

      include MsRestAzure

      # @return [String] The service URI for the webhook to post notifications.
      attr_accessor :service_uri

      # @return [Hash{String => String}] Custom headers that will be added to
      # the webhook notifications.
      attr_accessor :custom_headers


      #
      # Mapper for CallbackConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CallbackConfig',
          type: {
            name: 'Composite',
            class_name: 'CallbackConfig',
            model_properties: {
              service_uri: {
                required: true,
                serialized_name: 'serviceUri',
                type: {
                  name: 'String'
                }
              },
              custom_headers: {
                required: false,
                serialized_name: 'customHeaders',
                type: {
                  name: 'Dictionary',
                  value: {
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
