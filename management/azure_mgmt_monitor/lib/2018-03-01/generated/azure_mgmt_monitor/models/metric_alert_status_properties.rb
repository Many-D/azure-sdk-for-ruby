# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # An alert status properties.
    #
    class MetricAlertStatusProperties

      include MsRestAzure

      # @return [Hash{String => String}] An object describing the type of the
      # dimensions.
      attr_accessor :dimensions

      # @return [String] status value
      attr_accessor :status

      # @return [DateTime] UTC time when the status was checked.
      attr_accessor :timestamp


      #
      # Mapper for MetricAlertStatusProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetricAlertStatusProperties',
          type: {
            name: 'Composite',
            class_name: 'MetricAlertStatusProperties',
            model_properties: {
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end