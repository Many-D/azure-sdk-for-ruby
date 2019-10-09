# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2018_11_01_preview
  module Models
    #
    # A consumer Invitation data transfer object.
    #
    class ConsumerInvitation < ProxyDto

      include MsRestAzure

      # @return [Integer] Number of data sets in a share
      attr_accessor :data_set_count

      # @return [String] Description shared when the invitation was created
      attr_accessor :description

      # @return [String] Unique id of the invitation.
      attr_accessor :invitation_id

      # @return [InvitationStatus] The status of the invitation. Possible
      # values include: 'Pending', 'Accepted', 'Rejected', 'Withdrawn'
      attr_accessor :invitation_status

      # @return [String] invitation location
      attr_accessor :location

      # @return [DateTime] The time the recipient responded to the invitation.
      attr_accessor :responded_at

      # @return [String] Gets the name of the sender.
      attr_accessor :sender

      # @return [String] Gets the company name of the sender.
      attr_accessor :sender_company_name

      # @return [DateTime] Gets the time at which the invitation was sent.
      attr_accessor :sent_at

      # @return [String] Gets the source share Name.
      attr_accessor :share_name

      # @return [String] Terms of use shared when the invitation was created
      attr_accessor :terms_of_use


      #
      # Mapper for ConsumerInvitation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConsumerInvitation',
          type: {
            name: 'Composite',
            class_name: 'ConsumerInvitation',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              data_set_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataSetCount',
                type: {
                  name: 'Number'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              invitation_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.invitationId',
                type: {
                  name: 'String'
                }
              },
              invitation_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.invitationStatus',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.location',
                type: {
                  name: 'String'
                }
              },
              responded_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.respondedAt',
                type: {
                  name: 'DateTime'
                }
              },
              sender: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sender',
                type: {
                  name: 'String'
                }
              },
              sender_company_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.senderCompanyName',
                type: {
                  name: 'String'
                }
              },
              sent_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sentAt',
                type: {
                  name: 'DateTime'
                }
              },
              share_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.shareName',
                type: {
                  name: 'String'
                }
              },
              terms_of_use: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.termsOfUse',
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
