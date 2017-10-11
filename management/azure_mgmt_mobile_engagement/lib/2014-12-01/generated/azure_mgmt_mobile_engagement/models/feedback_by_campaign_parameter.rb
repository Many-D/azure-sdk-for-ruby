# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement::Api_2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class FeedbackByCampaignParameter

      include MsRestAzure

      # @return [String]
      attr_accessor :container_url

      # @return [String] A description of the export task.
      attr_accessor :description

      # @return [CampaignType] Possible values include: 'Announcement',
      # 'DataPush', 'NativePush', 'Poll'
      attr_accessor :campaign_type

      # @return [Array<Integer>] A list of campaign identifiers.
      attr_accessor :campaign_ids

      # @return [ExportFormat] The format of the exported data. Possible values
      # include: 'JsonBlob', 'CsvBlob'
      attr_accessor :export_format


      #
      # Mapper for FeedbackByCampaignParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'feedbackByCampaignParameter',
          type: {
            name: 'Composite',
            class_name: 'FeedbackByCampaignParameter',
            model_properties: {
              container_url: {
                required: true,
                serialized_name: 'containerUrl',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              campaign_type: {
                required: true,
                serialized_name: 'campaignType',
                type: {
                  name: 'Enum',
                  module: 'CampaignType'
                }
              },
              campaign_ids: {
                required: true,
                serialized_name: 'campaignIds',
                constraints: {
                  MinItems: 1
                },
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              export_format: {
                required: true,
                serialized_name: 'exportFormat',
                type: {
                  name: 'Enum',
                  module: 'ExportFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end
