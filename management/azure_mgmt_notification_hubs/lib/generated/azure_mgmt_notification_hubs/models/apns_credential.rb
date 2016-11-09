# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub ApnsCredential.
    #
    class ApnsCredential

      include MsRestAzure

      # @return [String] The APNS certificate.
      attr_accessor :apns_certificate

      # @return [String] The certificate key.
      attr_accessor :certificate_key

      # @return [String] The endpoint of this credential.
      attr_accessor :endpoint

      # @return [String] The Apns certificate Thumbprint
      attr_accessor :thumbprint


      #
      # Mapper for ApnsCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApnsCredential',
          type: {
            name: 'Composite',
            class_name: 'ApnsCredential',
            model_properties: {
              apns_certificate: {
                required: false,
                serialized_name: 'properties.apnsCertificate',
                type: {
                  name: 'String'
                }
              },
              certificate_key: {
                required: false,
                serialized_name: 'properties.certificateKey',
                type: {
                  name: 'String'
                }
              },
              endpoint: {
                required: false,
                serialized_name: 'properties.endpoint',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'properties.thumbprint',
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
