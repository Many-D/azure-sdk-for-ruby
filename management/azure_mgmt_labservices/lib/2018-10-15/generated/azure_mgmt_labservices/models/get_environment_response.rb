# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Represents the environments details
    #
    class GetEnvironmentResponse

      include MsRestAzure

      # @return [EnvironmentDetails] Details of the environment
      attr_accessor :environment


      #
      # Mapper for GetEnvironmentResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetEnvironmentResponse',
          type: {
            name: 'Composite',
            class_name: 'GetEnvironmentResponse',
            model_properties: {
              environment: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'environment',
                type: {
                  name: 'Composite',
                  class_name: 'EnvironmentDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
