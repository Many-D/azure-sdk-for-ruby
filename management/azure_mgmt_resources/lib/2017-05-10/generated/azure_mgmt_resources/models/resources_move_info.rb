# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2017_05_10
  module Models
    #
    # Parameters of move resources.
    #
    class ResourcesMoveInfo

      include MsRestAzure

      # @return [Array<String>] The IDs of the resources.
      attr_accessor :resources

      # @return [String] The target resource group.
      attr_accessor :target_resource_group


      #
      # Mapper for ResourcesMoveInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourcesMoveInfo',
          type: {
            name: 'Composite',
            class_name: 'ResourcesMoveInfo',
            model_properties: {
              resources: {
                required: false,
                serialized_name: 'resources',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              target_resource_group: {
                required: false,
                serialized_name: 'targetResourceGroup',
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
