# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Namespace/NotificationHub Regenerate Keys
    #
    class PolicykeyResource

      include MsRestAzure

      # @return [String] Name of the key that has to be regenerated for the
      # Namespace/Notification Hub Authorization Rule. The value can be
      # Primary Key/Secondary Key.
      attr_accessor :policy_key


      #
      # Mapper for PolicykeyResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicykeyResource',
          type: {
            name: 'Composite',
            class_name: 'PolicykeyResource',
            model_properties: {
              policy_key: {
                required: false,
                serialized_name: 'policyKey',
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
