# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Request object the contains found faces.
    #
    class FoundFaces

      include MsRestAzure

      # @return [Status] The evaluate status
      attr_accessor :status

      # @return [String] The tracking id.
      attr_accessor :tracking_id

      # @return [String] The cache id.
      attr_accessor :cache_id

      # @return [Boolean] True if result was found.
      attr_accessor :result

      # @return [Integer] Number of faces found.
      attr_accessor :count

      # @return [Array<KeyValuePair>] The advanced info.
      attr_accessor :advanced_info

      # @return [Array<Face>] The list of faces.
      attr_accessor :faces


      #
      # Mapper for FoundFaces class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FoundFaces',
          type: {
            name: 'Composite',
            class_name: 'FoundFaces',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Status',
                type: {
                  name: 'Composite',
                  class_name: 'Status'
                }
              },
              tracking_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TrackingId',
                type: {
                  name: 'String'
                }
              },
              cache_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CacheId',
                type: {
                  name: 'String'
                }
              },
              result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Result',
                type: {
                  name: 'Boolean'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Count',
                type: {
                  name: 'Number'
                }
              },
              advanced_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AdvancedInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'KeyValuePairElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'KeyValuePair'
                      }
                  }
                }
              },
              faces: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Faces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Face'
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
