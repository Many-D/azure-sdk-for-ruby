# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # MAB workload-specific error information.
    #
    class MabErrorInfo

      include MsRestAzure

      # @return [String] Localized error string.
      attr_accessor :error_string

      # @return [Array<String>] List of localized recommendations.
      attr_accessor :recommendations


      #
      # Mapper for MabErrorInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MabErrorInfo',
          type: {
            name: 'Composite',
            class_name: 'MabErrorInfo',
            model_properties: {
              error_string: {
                required: false,
                serialized_name: 'errorString',
                type: {
                  name: 'String'
                }
              },
              recommendations: {
                required: false,
                serialized_name: 'recommendations',
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
              }
            }
          }
        }
      end
    end
  end
end
