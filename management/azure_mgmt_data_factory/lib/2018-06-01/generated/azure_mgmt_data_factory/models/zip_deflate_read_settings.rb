# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The ZipDeflate compression read settings.
    #
    class ZipDeflateReadSettings < CompressionReadSettings

      include MsRestAzure


      def initialize
        @type = "ZipDeflateReadSettings"
      end

      attr_accessor :type

      # @return Preserve the zip file name as folder path. Type: boolean (or
      # Expression with resultType boolean).
      attr_accessor :preserve_zip_file_name_as_folder


      #
      # Mapper for ZipDeflateReadSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ZipDeflateReadSettings',
          type: {
            name: 'Composite',
            class_name: 'ZipDeflateReadSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              preserve_zip_file_name_as_folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preserveZipFileNameAsFolder',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end