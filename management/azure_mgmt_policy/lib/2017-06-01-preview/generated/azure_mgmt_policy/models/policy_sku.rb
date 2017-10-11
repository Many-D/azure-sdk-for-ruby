# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Policy::Api_2017_06_01_preview
  module Models
    #
    # The policy sku.
    #
    class PolicySku

      include MsRestAzure

      # @return [String] The name of the policy sku. Possible values are A0 and
      # A1.
      attr_accessor :name

      # @return [String] The policy sku tier. Possible values are Free and
      # Standard.
      attr_accessor :tier


      #
      # Mapper for PolicySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicySku',
          type: {
            name: 'Composite',
            class_name: 'PolicySku',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
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
