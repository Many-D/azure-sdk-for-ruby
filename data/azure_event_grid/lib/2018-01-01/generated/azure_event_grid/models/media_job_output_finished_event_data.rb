# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Job output finished event data
    #
    class MediaJobOutputFinishedEventData < MediaJobOutputStateChangeEventData

      include MsRestAzure


      #
      # Mapper for MediaJobOutputFinishedEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.JobOutputFinished',
          type: {
            name: 'Composite',
            class_name: 'MediaJobOutputFinishedEventData',
            model_properties: {
              previous_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'previousState',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              output: {
                client_side_validation: true,
                required: false,
                serialized_name: 'output',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'MediaJobOutput',
                  class_name: 'MediaJobOutput'
                }
              },
              job_correlation_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobCorrelationData',
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
              }
            }
          }
        }
      end
    end
  end
end
