# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Azure Storage Account list information.
    #
    class DataLakeAnalyticsAccountListStorageAccountsResult

      include MsRestAzure

      # @return [Array<StorageAccountInfo>] the results of the list operation
      attr_accessor :value

      # @return [Integer] total number of results.
      attr_accessor :count

      # @return [String] the link (url) to the next page of results.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<StorageAccountInfo>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [DataLakeAnalyticsAccountListStorageAccountsResult] with next
      # page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for DataLakeAnalyticsAccountListStorageAccountsResult class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeAnalyticsAccountListStorageAccountsResult',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsAccountListStorageAccountsResult',
            model_properties: {
              value: {
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StorageAccountInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccountInfo'
                      }
                  }
                }
              },
              count: {
                required: false,
                read_only: true,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              next_link: {
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
