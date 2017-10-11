# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # IP security restriction on an app.
    #
    class IpSecurityRestriction

      include MsRestAzure

      # @return [String] IP address the security restriction is valid for.
      attr_accessor :ip_address

      # @return [String] Subnet mask for the range of IP addresses the
      # restriction is valid for.
      attr_accessor :subnet_mask


      #
      # Mapper for IpSecurityRestriction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IpSecurityRestriction',
          type: {
            name: 'Composite',
            class_name: 'IpSecurityRestriction',
            model_properties: {
              ip_address: {
                required: true,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              subnet_mask: {
                required: false,
                serialized_name: 'subnetMask',
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
