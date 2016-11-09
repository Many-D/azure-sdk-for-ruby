# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Resources
  module Models
    #
    # Deployment operation properties.
    #
    class DeploymentOperationProperties

      include MsRestAzure

      # @return [String] The state of the provisioning.
      attr_accessor :provisioning_state

      # @return [DateTime] The date and time of the operation.
      attr_accessor :timestamp

      # @return [String] Deployment operation service request id.
      attr_accessor :service_request_id

      # @return [String] Operation status code.
      attr_accessor :status_code

      # @return Operation status message.
      attr_accessor :status_message

      # @return [TargetResource] The target resource.
      attr_accessor :target_resource

      # @return [HttpMessage] The HTTP request message.
      attr_accessor :request

      # @return [HttpMessage] The HTTP response message.
      attr_accessor :response


      #
      # Mapper for DeploymentOperationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeploymentOperationProperties',
          type: {
            name: 'Composite',
            class_name: 'DeploymentOperationProperties',
            model_properties: {
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              service_request_id: {
                required: false,
                read_only: true,
                serialized_name: 'serviceRequestId',
                type: {
                  name: 'String'
                }
              },
              status_code: {
                required: false,
                read_only: true,
                serialized_name: 'statusCode',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                required: false,
                read_only: true,
                serialized_name: 'statusMessage',
                type: {
                  name: 'Object'
                }
              },
              target_resource: {
                required: false,
                read_only: true,
                serialized_name: 'targetResource',
                type: {
                  name: 'Composite',
                  class_name: 'TargetResource'
                }
              },
              request: {
                required: false,
                read_only: true,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessage'
                }
              },
              response: {
                required: false,
                read_only: true,
                serialized_name: 'response',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessage'
                }
              }
            }
          }
        }
      end
    end
  end
end
