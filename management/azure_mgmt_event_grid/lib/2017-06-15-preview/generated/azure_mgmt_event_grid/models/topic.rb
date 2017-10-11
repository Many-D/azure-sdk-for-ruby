# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventGrid::Api_2017_06_15_preview
  module Models
    #
    # EventGrid Topic
    #
    class Topic < TrackedResource

      include MsRestAzure

      # @return [TopicProvisioningState] Provisioning state of the topic.
      # Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Endpoint for the topic.
      attr_accessor :endpoint


      #
      # Mapper for Topic class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Topic',
          type: {
            name: 'Composite',
            class_name: 'Topic',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
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
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.endpoint',
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
