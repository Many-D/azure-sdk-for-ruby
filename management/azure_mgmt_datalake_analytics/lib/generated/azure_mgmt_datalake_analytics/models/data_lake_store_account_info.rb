# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Data Lake Store account information.
    #
    class DataLakeStoreAccountInfo

      include MsRestAzure

      # @return [String] the account name of the Data Lake Store account.
      attr_accessor :name

      # @return [DataLakeStoreAccountInfoProperties] the properties associated
      # with this Data Lake Store account.
      attr_accessor :properties


      #
      # Mapper for DataLakeStoreAccountInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DataLakeStoreAccountInfo',
          type: {
            name: 'Composite',
            class_name: 'DataLakeStoreAccountInfo',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DataLakeStoreAccountInfoProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
