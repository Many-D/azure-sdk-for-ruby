# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class MetricSpecification

      include MsRestAzure

      # @return [String]
      attr_accessor :name

      # @return [String]
      attr_accessor :display_name

      # @return [String]
      attr_accessor :display_description

      # @return [String]
      attr_accessor :unit

      # @return [String]
      attr_accessor :aggregation_type

      # @return [Boolean]
      attr_accessor :supports_instance_level_aggregation

      # @return [Boolean]
      attr_accessor :enable_regional_mdm_account

      # @return [String]
      attr_accessor :source_mdm_account

      # @return [String]
      attr_accessor :source_mdm_namespace

      # @return [String]
      attr_accessor :metric_filter_pattern

      # @return [Boolean]
      attr_accessor :fill_gap_with_zero

      # @return [Boolean]
      attr_accessor :is_internal

      # @return [Array<Dimension>]
      attr_accessor :dimensions

      # @return [String]
      attr_accessor :category

      # @return [Array<MetricAvailability>]
      attr_accessor :availabilities


      #
      # Mapper for MetricSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MetricSpecification',
          type: {
            name: 'Composite',
            class_name: 'MetricSpecification',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              display_description: {
                required: false,
                serialized_name: 'displayDescription',
                type: {
                  name: 'String'
                }
              },
              unit: {
                required: false,
                serialized_name: 'unit',
                type: {
                  name: 'String'
                }
              },
              aggregation_type: {
                required: false,
                serialized_name: 'aggregationType',
                type: {
                  name: 'String'
                }
              },
              supports_instance_level_aggregation: {
                required: false,
                serialized_name: 'supportsInstanceLevelAggregation',
                type: {
                  name: 'Boolean'
                }
              },
              enable_regional_mdm_account: {
                required: false,
                serialized_name: 'enableRegionalMdmAccount',
                type: {
                  name: 'Boolean'
                }
              },
              source_mdm_account: {
                required: false,
                serialized_name: 'sourceMdmAccount',
                type: {
                  name: 'String'
                }
              },
              source_mdm_namespace: {
                required: false,
                serialized_name: 'sourceMdmNamespace',
                type: {
                  name: 'String'
                }
              },
              metric_filter_pattern: {
                required: false,
                serialized_name: 'metricFilterPattern',
                type: {
                  name: 'String'
                }
              },
              fill_gap_with_zero: {
                required: false,
                serialized_name: 'fillGapWithZero',
                type: {
                  name: 'Boolean'
                }
              },
              is_internal: {
                required: false,
                serialized_name: 'isInternal',
                type: {
                  name: 'Boolean'
                }
              },
              dimensions: {
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Dimension'
                      }
                  }
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                type: {
                  name: 'String'
                }
              },
              availabilities: {
                required: false,
                serialized_name: 'availabilities',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MetricAvailabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricAvailability'
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
