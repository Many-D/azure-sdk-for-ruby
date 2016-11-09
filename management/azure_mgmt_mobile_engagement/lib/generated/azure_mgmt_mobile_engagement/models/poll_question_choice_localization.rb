# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class PollQuestionChoiceLocalization

      include MsRestAzure

      # @return [String] Title of the choice.
      attr_accessor :title


      #
      # Mapper for PollQuestionChoiceLocalization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PollQuestionChoiceLocalization',
          type: {
            name: 'Composite',
            class_name: 'PollQuestionChoiceLocalization',
            model_properties: {
              title: {
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 256
                },
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
