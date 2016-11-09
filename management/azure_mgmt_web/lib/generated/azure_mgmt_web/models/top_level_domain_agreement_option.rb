# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Options for retrieving the list of top level domain legal agreements
    #
    class TopLevelDomainAgreementOption

      include MsRestAzure

      # @return [Boolean] If true then the list of agreements will inclue
      # agreements for domain privacy as well.
      attr_accessor :include_privacy


      #
      # Mapper for TopLevelDomainAgreementOption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TopLevelDomainAgreementOption',
          type: {
            name: 'Composite',
            class_name: 'TopLevelDomainAgreementOption',
            model_properties: {
              include_privacy: {
                required: false,
                serialized_name: 'includePrivacy',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
