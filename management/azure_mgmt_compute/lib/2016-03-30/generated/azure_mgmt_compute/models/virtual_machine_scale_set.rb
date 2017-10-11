# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute::Api_2016_03_30
  module Models
    #
    # Describes a Virtual Machine Scale Set.
    #
    class VirtualMachineScaleSet < Resource

      include MsRestAzure

      # @return [Sku] The virtual machine scale set sku.
      attr_accessor :sku

      # @return [UpgradePolicy] The upgrade policy.
      attr_accessor :upgrade_policy

      # @return [VirtualMachineScaleSetVMProfile] The virtual machine profile.
      attr_accessor :virtual_machine_profile

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [Boolean] Specifies whether the Virtual Machine Scale Set
      # should be overprovisioned.
      attr_accessor :overprovision

      # @return [VirtualMachineScaleSetIdentity] The identity of the virtual
      # machine scale set, if configured.
      attr_accessor :identity


      #
      # Mapper for VirtualMachineScaleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSet',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSet',
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              upgrade_policy: {
                required: false,
                serialized_name: 'properties.upgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UpgradePolicy'
                }
              },
              virtual_machine_profile: {
                required: false,
                serialized_name: 'properties.virtualMachineProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetVMProfile'
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
              overprovision: {
                required: false,
                serialized_name: 'properties.overprovision',
                type: {
                  name: 'Boolean'
                }
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
