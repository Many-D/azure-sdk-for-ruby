# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the certificate.
    #
    class Certificate

      include MsRestAzure

      # @return [String] Gets the id of the resource.
      attr_accessor :id

      # @return [String] Gets the name of the certificate.
      attr_accessor :name

      # @return [String] Gets the thumbprint of the certificate.
      attr_accessor :thumbprint

      # @return [DateTime] Gets the expiry time of the certificate.
      attr_accessor :expiry_time

      # @return [Boolean] Gets the is exportable flag of the certificate.
      attr_accessor :is_exportable

      # @return [DateTime] Gets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description


      #
      # Mapper for Certificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Certificate',
          type: {
            name: 'Composite',
            class_name: 'Certificate',
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
              thumbprint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              expiry_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.expiryTime',
                type: {
                  name: 'DateTime'
                }
              },
              is_exportable: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isExportable',
                type: {
                  name: 'Boolean'
                }
              },
              creation_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
