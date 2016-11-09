# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a List Azure SQL Database restore points
    # request.
    #
    class RestorePointListResult

      include MsRestAzure

      # @return [Array<RestorePoint>] The list of a given Azure SQL Database
      # restore points.
      attr_accessor :value


      #
      # Mapper for RestorePointListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RestorePointListResult',
          type: {
            name: 'Composite',
            class_name: 'RestorePointListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RestorePointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestorePoint'
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
