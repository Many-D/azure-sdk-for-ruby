# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_06_01
  module Models
    #
    # NumberLessThan Advanced Filter.
    #
    class NumberLessThanAdvancedFilter < AdvancedFilter

      include MsRestAzure


      def initialize
        @operatorType = "NumberLessThan"
      end

      attr_accessor :operatorType

      # @return [Float] The filter value.
      attr_accessor :value


      #
      # Mapper for NumberLessThanAdvancedFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NumberLessThan',
          type: {
            name: 'Composite',
            class_name: 'NumberLessThanAdvancedFilter',
            model_properties: {
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              operatorType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operatorType',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
