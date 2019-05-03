# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Currency and amount that customer will be charged in customer's local
    # currency. Tax is not included.
    #
    class CalculatePriceResponsePropertiesBillingCurrencyTotal

      include MsRestAzure

      # @return [String]
      attr_accessor :currency_code

      # @return [Float]
      attr_accessor :amount


      #
      # Mapper for CalculatePriceResponsePropertiesBillingCurrencyTotal class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CalculatePriceResponseProperties_billingCurrencyTotal',
          type: {
            name: 'Composite',
            class_name: 'CalculatePriceResponsePropertiesBillingCurrencyTotal',
            model_properties: {
              currency_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currencyCode',
                type: {
                  name: 'String'
                }
              },
              amount: {
                client_side_validation: true,
                required: false,
                serialized_name: 'amount',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
