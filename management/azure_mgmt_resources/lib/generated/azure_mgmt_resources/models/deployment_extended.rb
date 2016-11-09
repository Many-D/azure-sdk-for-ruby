# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Deployment information.
    #
    class DeploymentExtended

      include MsRestAzure

      # @return [String] The ID of the deployment.
      attr_accessor :id

      # @return [String] The name of the deployment.
      attr_accessor :name

      # @return [DeploymentPropertiesExtended] Deployment properties.
      attr_accessor :properties


      #
      # Mapper for DeploymentExtended class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeploymentExtended',
          type: {
            name: 'Composite',
            class_name: 'DeploymentExtended',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentPropertiesExtended'
                }
              }
            }
          }
        }
      end
    end
  end
end
