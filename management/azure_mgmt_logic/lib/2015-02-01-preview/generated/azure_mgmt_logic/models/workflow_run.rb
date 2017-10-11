# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic::Api_2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowRun < SubResource

      include MsRestAzure

      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted'
      attr_accessor :status

      # @return [String] Gets the code.
      attr_accessor :code

      # @return Gets the error.
      attr_accessor :error

      # @return [String] Gets the correlation id.
      attr_accessor :correlation_id

      # @return [ResourceReference] Gets the reference to workflow version.
      attr_accessor :workflow

      # @return [WorkflowRunTrigger] Gets the fired trigger.
      attr_accessor :trigger

      # @return [Hash{String => WorkflowOutputParameter}] Gets the outputs.
      attr_accessor :outputs

      # @return [String] Gets the workflow run name.
      attr_accessor :name

      # @return [String] Gets the workflow run type.
      attr_accessor :type


      #
      # Mapper for WorkflowRun class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowRun',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRun',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              },
              code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.code',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                read_only: true,
                serialized_name: 'properties.error',
                type: {
                  name: 'Object'
                }
              },
              correlation_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.correlationId',
                type: {
                  name: 'String'
                }
              },
              workflow: {
                required: false,
                read_only: true,
                serialized_name: 'properties.workflow',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceReference'
                }
              },
              trigger: {
                required: false,
                read_only: true,
                serialized_name: 'properties.trigger',
                type: {
                  name: 'Composite',
                  class_name: 'WorkflowRunTrigger'
                }
              },
              outputs: {
                required: false,
                read_only: true,
                serialized_name: 'properties.outputs',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'WorkflowOutputParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WorkflowOutputParameter'
                      }
                  }
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
