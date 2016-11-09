# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # A custom image.
    #
    class CustomImage

      include MsRestAzure

      # @return [CustomImagePropertiesFromVm]
      attr_accessor :vm

      # @return [CustomImagePropertiesCustom] The VHD from which the image is
      # to be created.
      attr_accessor :vhd

      # @return [String] The description of the custom image.
      attr_accessor :description

      # @return [String] The author of the custom image.
      attr_accessor :author

      # @return [DateTime] The creation date of the custom image.
      attr_accessor :creation_date

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier

      # @return [String] The identifier of the resource.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for CustomImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CustomImage',
          type: {
            name: 'Composite',
            class_name: 'CustomImage',
            model_properties: {
              vm: {
                required: false,
                serialized_name: 'properties.vm',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesFromVm'
                }
              },
              vhd: {
                required: false,
                serialized_name: 'properties.vhd',
                type: {
                  name: 'Composite',
                  class_name: 'CustomImagePropertiesCustom'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              author: {
                required: false,
                serialized_name: 'properties.author',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
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
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
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
              }
            }
          }
        }
      end
    end
  end
end
