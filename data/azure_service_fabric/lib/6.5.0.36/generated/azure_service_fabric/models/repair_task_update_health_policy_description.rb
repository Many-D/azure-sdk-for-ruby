# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes a request to update the health policy of a repair task.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class RepairTaskUpdateHealthPolicyDescription

      include MsRestAzure

      # @return [String] The ID of the repair task to be updated.
      attr_accessor :task_id

      # @return [String] The current version number of the repair task. If
      # non-zero, then the request will only succeed if this value matches the
      # actual current value of the repair task. If zero, then no version check
      # is performed.
      attr_accessor :version

      # @return [Boolean] A boolean indicating if health check is to be
      # performed in the Preparing stage of the repair task. If not specified
      # the existing value should not be altered. Otherwise, specify the
      # desired new value.
      attr_accessor :perform_preparing_health_check

      # @return [Boolean] A boolean indicating if health check is to be
      # performed in the Restoring stage of the repair task. If not specified
      # the existing value should not be altered. Otherwise, specify the
      # desired new value.
      attr_accessor :perform_restoring_health_check


      #
      # Mapper for RepairTaskUpdateHealthPolicyDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepairTaskUpdateHealthPolicyDescription',
          type: {
            name: 'Composite',
            class_name: 'RepairTaskUpdateHealthPolicyDescription',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TaskId',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Version',
                type: {
                  name: 'String'
                }
              },
              perform_preparing_health_check: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PerformPreparingHealthCheck',
                type: {
                  name: 'Boolean'
                }
              },
              perform_restoring_health_check: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PerformRestoringHealthCheck',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end