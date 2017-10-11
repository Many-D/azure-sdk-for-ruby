# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Guest disk signature based disk exclusion option when doing enable
    # protection of virtual machine in InMage provider.
    #
    class InMageVolumeExclusionOptions

      include MsRestAzure

      # @return [String] The volume label. The disk having any volume with this
      # label will be excluded from replication.
      attr_accessor :volume_label

      # @return [String] The value indicating whether to exclude multi volume
      # disk or not. If a disk has multiple volumes and one of the volume has
      # label matching with VolumeLabel this disk will be excluded from
      # replication if OnlyExcludeIfSingleVolume is false.
      attr_accessor :only_exclude_if_single_volume


      #
      # Mapper for InMageVolumeExclusionOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'InMageVolumeExclusionOptions',
          type: {
            name: 'Composite',
            class_name: 'InMageVolumeExclusionOptions',
            model_properties: {
              volume_label: {
                required: false,
                serialized_name: 'volumeLabel',
                type: {
                  name: 'String'
                }
              },
              only_exclude_if_single_volume: {
                required: false,
                serialized_name: 'OnlyExcludeIfSingleVolume',
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
