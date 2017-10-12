# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_07_01
  module Models
    #
    # Entity representing the reference to the deployment paramaters.
    #
    class ParametersLink

      include MsRestAzure

      # @return [String] URI referencing the template.
      attr_accessor :uri

      # @return [String] If included it must match the ContentVersion in the
      # template.
      attr_accessor :content_version


      #
      # Mapper for ParametersLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ParametersLink',
          type: {
            name: 'Composite',
            class_name: 'ParametersLink',
            model_properties: {
              uri: {
                required: true,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              content_version: {
                required: false,
                serialized_name: 'contentVersion',
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
