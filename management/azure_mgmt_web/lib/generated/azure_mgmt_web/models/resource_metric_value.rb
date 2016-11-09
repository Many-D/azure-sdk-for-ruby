# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Value of resource metric
    #
    class ResourceMetricValue

      include MsRestAzure

      # @return [String] Value timestamp
      attr_accessor :timestamp

      # @return [Float] Value average
      attr_accessor :average

      # @return [Float] Value minimum
      attr_accessor :minimum

      # @return [Float] Value maximum
      attr_accessor :maximum

      # @return [Float] Value total
      attr_accessor :total

      # @return [Float] Value count
      attr_accessor :count

      # @return [Array<ResourceMetricProperty>] Properties
      attr_accessor :properties


      #
      # Mapper for ResourceMetricValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceMetricValue',
          type: {
            name: 'Composite',
            class_name: 'ResourceMetricValue',
            model_properties: {
              timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'String'
                }
              },
              average: {
                required: false,
                read_only: true,
                serialized_name: 'average',
                type: {
                  name: 'Double'
                }
              },
              minimum: {
                required: false,
                read_only: true,
                serialized_name: 'minimum',
                type: {
                  name: 'Double'
                }
              },
              maximum: {
                required: false,
                read_only: true,
                serialized_name: 'maximum',
                type: {
                  name: 'Double'
                }
              },
              total: {
                required: false,
                read_only: true,
                serialized_name: 'total',
                type: {
                  name: 'Double'
                }
              },
              count: {
                required: false,
                read_only: true,
                serialized_name: 'count',
                type: {
                  name: 'Double'
                }
              },
              properties: {
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ResourceMetricPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceMetricProperty'
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
