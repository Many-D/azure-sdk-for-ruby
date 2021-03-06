# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Job custom data details.
    #
    class JobProperties

      include MsRestAzure

      # @return [String] The activity id.
      attr_accessor :activity_id

      # @return [String] The ScenarioName.
      attr_accessor :scenario_name

      # @return [String] The DisplayName.
      attr_accessor :friendly_name

      # @return [String] The status of the Job. It is one of these values -
      # NotStarted, InProgress, Succeeded, Failed, Cancelled, Suspended or
      # Other.
      attr_accessor :state

      # @return [String] The description of the state of the Job. For e.g. -
      # For Succeeded state, description can be Completed, PartiallySucceeded,
      # CompletedWithInformation or Skipped.
      attr_accessor :state_description

      # @return [Array<ASRTask>] The tasks.
      attr_accessor :tasks

      # @return [Array<JobErrorDetails>] The errors.
      attr_accessor :errors

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [Array<String>] The Allowed action the job.
      attr_accessor :allowed_actions

      # @return [String] The affected Object Id.
      attr_accessor :target_object_id

      # @return [String] The name of the affected object.
      attr_accessor :target_object_name

      # @return [String] The type of the affected object which is of
      # {Microsoft.Azure.SiteRecovery.V2015_11_10.AffectedObjectType} class.
      attr_accessor :target_instance_type

      # @return [JobDetails] The custom job details like test failover job
      # details.
      attr_accessor :custom_details


      #
      # Mapper for JobProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobProperties',
          type: {
            name: 'Composite',
            class_name: 'JobProperties',
            model_properties: {
              activity_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              scenario_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scenarioName',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              state_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stateDescription',
                type: {
                  name: 'String'
                }
              },
              tasks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tasks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ASRTaskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ASRTask'
                      }
                  }
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorDetails'
                      }
                  }
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              allowed_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              target_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetObjectId',
                type: {
                  name: 'String'
                }
              },
              target_object_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetObjectName',
                type: {
                  name: 'String'
                }
              },
              target_instance_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetInstanceType',
                type: {
                  name: 'String'
                }
              },
              custom_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'JobDetails',
                  class_name: 'JobDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
