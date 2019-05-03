# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Model object.
    #
    #
    class SplitRequest

      include MsRestAzure

      # @return [Array<Integer>] List of the quantities in the new reservations
      # to create.
      attr_accessor :quantities

      # @return [String] Resource id of the reservation to be split. Format of
      # the resource id should be
      # /providers/Microsoft.Capacity/reservationOrders/{reservationOrderId}/reservations/{reservationId}
      attr_accessor :reservation_id


      #
      # Mapper for SplitRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SplitRequest',
          type: {
            name: 'Composite',
            class_name: 'SplitRequest',
            model_properties: {
              quantities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.quantities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              reservation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reservationId',
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
