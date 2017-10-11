# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # A request to check whether the specified name for a resource is
    # available.
    #
    class CheckNameAvailabilityRequest

      include MsRestAzure

      # @return [String] The name whose availability is to be checked.
      attr_accessor :name

      # @return [String] The type of resource that is used as the scope of the
      # availability check. Default value: 'Microsoft.Sql/servers' .
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityRequest',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityRequest',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'Microsoft.Sql/servers',
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
