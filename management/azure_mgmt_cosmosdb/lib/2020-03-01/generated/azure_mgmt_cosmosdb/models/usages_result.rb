# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # The response to a list usage request.
    #
    class UsagesResult

      include MsRestAzure

      # @return [Array<Usage>] The list of usages for the database. A usage is
      # a point in time metric
      attr_accessor :value


      #
      # Mapper for UsagesResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UsagesResult',
          type: {
            name: 'Composite',
            class_name: 'UsagesResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Usage'
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
