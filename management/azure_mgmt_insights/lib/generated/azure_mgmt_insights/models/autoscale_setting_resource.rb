# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # The autoscale setting resource.
    #
    class AutoscaleSettingResource < MsRestAzure::Resource

      include MsRestAzure

      # @return [Array<AutoscaleProfile>] the collection of automatic scaling
      # profiles that specify different scaling parameters for different time
      # periods. A maximum of 20 profiles can be specified.
      attr_accessor :profiles

      # @return [Array<AutoscaleNotification>] the collection of notifications.
      attr_accessor :notifications

      # @return [Boolean] the enabled flag. Specifies whether automatic
      # scaling is enabled for the resource. Default value: true .
      attr_accessor :enabled

      # @return [String] the name of the autoscale setting.
      attr_accessor :autoscale_setting_resource_name

      # @return [String] the resource identifier of the resource that the
      # autoscale setting should be added to.
      attr_accessor :target_resource_uri


      #
      # Mapper for AutoscaleSettingResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AutoscaleSettingResource',
          type: {
            name: 'Composite',
            class_name: 'AutoscaleSettingResource',
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
              profiles: {
                required: true,
                serialized_name: 'properties.profiles',
                constraints: {
                  MaxItems: 20
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AutoscaleProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AutoscaleProfile'
                      }
                  }
                }
              },
              notifications: {
                required: false,
                serialized_name: 'properties.notifications',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AutoscaleNotificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AutoscaleNotification'
                      }
                  }
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              autoscale_setting_resource_name: {
                required: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              target_resource_uri: {
                required: false,
                serialized_name: 'properties.targetResourceUri',
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
