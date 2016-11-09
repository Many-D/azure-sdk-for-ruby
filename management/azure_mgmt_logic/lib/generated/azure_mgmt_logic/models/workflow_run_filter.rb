# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # Model object.
    #
    class WorkflowRunFilter

      include MsRestAzure

      # @return [WorkflowStatus] The status of workflow run. Possible values
      # include: 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded',
      # 'Skipped', 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut',
      # 'Aborted', 'Ignored'
      attr_accessor :status


      #
      # Mapper for WorkflowRunFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkflowRunFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRunFilter',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
