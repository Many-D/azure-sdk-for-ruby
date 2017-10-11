# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Billing::Api_2017_04_24_preview
  module Models
    #
    # An invoice resource can be used download a PDF version of an invoice.
    #
    class Invoice < Resource

      include MsRestAzure

      # @return [DownloadUrl] A secure link to download the PDF version of an
      # invoice. The link will cease to work after its expiry time is reached.
      attr_accessor :download_url

      # @return [Date] The start of the date range covered by the invoice.
      attr_accessor :invoice_period_start_date

      # @return [Date] The end of the date range covered by the invoice.
      attr_accessor :invoice_period_end_date

      # @return [Array<String>] Array of billing perdiod ids that the invoice
      # is attributed to.
      attr_accessor :billing_period_ids


      #
      # Mapper for Invoice class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Invoice',
          type: {
            name: 'Composite',
            class_name: 'Invoice',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              download_url: {
                required: false,
                serialized_name: 'properties.downloadUrl',
                type: {
                  name: 'Composite',
                  class_name: 'DownloadUrl'
                }
              },
              invoice_period_start_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.invoicePeriodStartDate',
                type: {
                  name: 'Date'
                }
              },
              invoice_period_end_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.invoicePeriodEndDate',
                type: {
                  name: 'Date'
                }
              },
              billing_period_ids: {
                required: false,
                read_only: true,
                serialized_name: 'properties.billingPeriodIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
