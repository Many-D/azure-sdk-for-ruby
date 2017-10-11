# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs::Api_2017_04_01
  module Models
    #
    # Description of a NotificationHub BaiduCredential.
    #
    class BaiduCredential

      include MsRestAzure

      # @return [String] Baidu Api Key.
      attr_accessor :baidu_api_key

      # @return [String] Baidu Endpoint.
      attr_accessor :baidu_end_point

      # @return [String] Baidu Secret Key
      attr_accessor :baidu_secret_key


      #
      # Mapper for BaiduCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BaiduCredential',
          type: {
            name: 'Composite',
            class_name: 'BaiduCredential',
            model_properties: {
              baidu_api_key: {
                required: false,
                serialized_name: 'properties.baiduApiKey',
                type: {
                  name: 'String'
                }
              },
              baidu_end_point: {
                required: false,
                serialized_name: 'properties.baiduEndPoint',
                type: {
                  name: 'String'
                }
              },
              baidu_secret_key: {
                required: false,
                serialized_name: 'properties.baiduSecretKey',
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
