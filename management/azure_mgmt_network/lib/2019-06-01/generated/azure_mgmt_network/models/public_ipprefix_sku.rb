# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # SKU of a public IP prefix.
    #
    class PublicIPPrefixSku

      include MsRestAzure

      # @return [PublicIPPrefixSkuName] Name of a public IP prefix SKU.
      # Possible values include: 'Standard'
      attr_accessor :name


      #
      # Mapper for PublicIPPrefixSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublicIPPrefixSku',
          type: {
            name: 'Composite',
            class_name: 'PublicIPPrefixSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
