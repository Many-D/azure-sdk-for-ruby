# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_10_01
  module Models
    #
    # Virtual machine image resource information.
    #
    class VirtualMachineImageResource < SubResource

      include MsRestAzure

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The supported Azure location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Specifies the tags that are assigned
      # to the virtual machine. For more information about using tags, see
      # [Using tags to organize your Azure
      # resources](https://docs.microsoft.com/azure/azure-resource-manager/resource-group-using-tags.md).
      attr_accessor :tags


      #
      # Mapper for VirtualMachineImageResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineImageResource',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineImageResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
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
