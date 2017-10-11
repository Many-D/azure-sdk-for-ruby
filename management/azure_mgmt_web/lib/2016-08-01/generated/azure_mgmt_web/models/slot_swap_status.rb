# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # The status of the last successfull slot swap operation.
    #
    class SlotSwapStatus

      include MsRestAzure

      # @return [DateTime] The time the last successful slot swap completed.
      attr_accessor :timestamp_utc

      # @return [String] The source slot of the last swap operation.
      attr_accessor :source_slot_name

      # @return [String] The destination slot of the last swap operation.
      attr_accessor :destination_slot_name


      #
      # Mapper for SlotSwapStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SlotSwapStatus',
          type: {
            name: 'Composite',
            class_name: 'SlotSwapStatus',
            model_properties: {
              timestamp_utc: {
                required: false,
                read_only: true,
                serialized_name: 'timestampUtc',
                type: {
                  name: 'DateTime'
                }
              },
              source_slot_name: {
                required: false,
                read_only: true,
                serialized_name: 'sourceSlotName',
                type: {
                  name: 'String'
                }
              },
              destination_slot_name: {
                required: false,
                read_only: true,
                serialized_name: 'destinationSlotName',
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
