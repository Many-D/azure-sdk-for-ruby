# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_10_01
  module Models
    #
    # Describes a data disk.
    #
    class DataDisk

      include MsRestAzure

      # @return [Integer] Specifies the logical unit number of the data disk.
      # This value is used to identify data disks within the VM and therefore
      # must be unique for each data disk attached to a VM.
      attr_accessor :lun

      # @return [String] The disk name.
      attr_accessor :name

      # @return [VirtualHardDisk] The virtual hard disk.
      attr_accessor :vhd

      # @return [VirtualHardDisk] The source user image virtual hard disk. The
      # virtual hard disk will be copied before being attached to the virtual
      # machine. If SourceImage is provided, the destination virtual hard drive
      # must not exist.
      attr_accessor :image

      # @return [CachingTypes] Specifies the caching requirements. <br><br>
      # Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br>
      # **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly
      # for Premium storage**. Possible values include: 'None', 'ReadOnly',
      # 'ReadWrite'
      attr_accessor :caching

      # @return [Boolean] Specifies whether writeAccelerator should be enabled
      # or disabled on the disk.
      attr_accessor :write_accelerator_enabled

      # @return [DiskCreateOptionTypes] Specifies how the virtual machine
      # should be created.<br><br> Possible values are:<br><br> **Attach**
      # \u2013 This value is used when you are using a specialized disk to
      # create the virtual machine.<br><br> **FromImage** \u2013 This value is
      # used when you are using an image to create the virtual machine. If you
      # are using a platform image, you also use the imageReference element
      # described above. If you are using a marketplace image, you  also use
      # the plan element previously described. Possible values include:
      # 'FromImage', 'Empty', 'Attach'
      attr_accessor :create_option

      # @return [Integer] Specifies the size of an empty data disk in
      # gigabytes. This element can be used to overwrite the size of the disk
      # in a virtual machine image. <br><br> This value cannot be larger than
      # 1023 GB
      attr_accessor :disk_size_gb

      # @return [ManagedDiskParameters] The managed disk parameters.
      attr_accessor :managed_disk


      #
      # Mapper for DataDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataDisk',
          type: {
            name: 'Composite',
            class_name: 'DataDisk',
            model_properties: {
              lun: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lun',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vhd: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vhd',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'image',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualHardDisk'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              write_accelerator_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeAcceleratorEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              create_option: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createOption',
                type: {
                  name: 'String'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              managed_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedDiskParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
