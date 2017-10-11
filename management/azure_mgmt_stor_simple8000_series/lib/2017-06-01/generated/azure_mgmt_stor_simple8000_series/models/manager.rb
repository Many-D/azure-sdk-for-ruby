# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The StorSimple Manager.
    #
    class Manager < Resource

      include MsRestAzure

      # @return [ManagerIntrinsicSettings] Represents the type of StorSimple
      # Manager.
      attr_accessor :cis_intrinsic_settings

      # @return [ManagerSku] Specifies the Sku. Default value: {} .
      attr_accessor :sku

      # @return [String] Specifies the state of the resource as it is getting
      # provisioned. Value of "Succeeded" means the Manager was successfully
      # created.
      attr_accessor :provisioning_state

      # @return [String] The etag of the manager.
      attr_accessor :etag


      #
      # Mapper for Manager class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Manager',
          type: {
            name: 'Composite',
            class_name: 'Manager',
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
              cis_intrinsic_settings: {
                required: false,
                serialized_name: 'properties.cisIntrinsicSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ManagerIntrinsicSettings'
                }
              },
              sku: {
                required: false,
                is_constant: true,
                serialized_name: 'properties.sku',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'ManagerSku'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
