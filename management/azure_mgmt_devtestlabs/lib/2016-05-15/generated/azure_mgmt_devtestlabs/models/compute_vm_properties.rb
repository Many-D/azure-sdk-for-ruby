# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # Properties of a virtual machine returned by the Microsoft.Compute API.
    #
    class ComputeVmProperties

      include MsRestAzure

      # @return [Array<ComputeVmInstanceViewStatus>] Gets the statuses of the
      # virtual machine.
      attr_accessor :statuses

      # @return [String] Gets the OS type of the virtual machine.
      attr_accessor :os_type

      # @return [String] Gets the size of the virtual machine.
      attr_accessor :vm_size

      # @return [String] Gets the network interface ID of the virtual machine.
      attr_accessor :network_interface_id

      # @return [String] Gets OS disk blob uri for the virtual machine.
      attr_accessor :os_disk_id

      # @return [Array<String>] Gets data disks blob uri for the virtual
      # machine.
      attr_accessor :data_disk_ids

      # @return [Array<ComputeDataDisk>] Gets all data disks attached to the
      # virtual machine.
      attr_accessor :data_disks


      #
      # Mapper for ComputeVmProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ComputeVmProperties',
          type: {
            name: 'Composite',
            class_name: 'ComputeVmProperties',
            model_properties: {
              statuses: {
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ComputeVmInstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ComputeVmInstanceViewStatus'
                      }
                  }
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              vm_size: {
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              network_interface_id: {
                required: false,
                serialized_name: 'networkInterfaceId',
                type: {
                  name: 'String'
                }
              },
              os_disk_id: {
                required: false,
                serialized_name: 'osDiskId',
                type: {
                  name: 'String'
                }
              },
              data_disk_ids: {
                required: false,
                serialized_name: 'dataDiskIds',
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
              data_disks: {
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ComputeDataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ComputeDataDisk'
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
