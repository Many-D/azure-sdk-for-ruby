# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search::Api_2015_08_19
  module Models
    #
    # Output of check name availability API.
    #
    class CheckNameAvailabilityOutput

      include MsRestAzure

      # @return [Boolean] A value indicating whether the name is available.
      attr_accessor :is_name_available

      # @return [UnavailableNameReason] The reason why the name is not
      # available. 'Invalid' indicates the name provided does not match the
      # naming requirements (incorrect length, unsupported characters, etc.).
      # 'AlreadyExists' indicates that the name is already in use and is
      # therefore unavailable. Possible values include: 'Invalid',
      # 'AlreadyExists'
      attr_accessor :reason

      # @return [String] A message that explains why the name is invalid and
      # provides resource naming requirements. Available only if 'Invalid' is
      # returned in the 'reason' property.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckNameAvailabilityOutput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityOutput',
            model_properties: {
              is_name_available: {
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                read_only: true,
                serialized_name: 'message',
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
