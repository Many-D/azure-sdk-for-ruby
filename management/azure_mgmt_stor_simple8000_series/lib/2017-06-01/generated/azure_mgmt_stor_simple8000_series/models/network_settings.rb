# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # Represents the network settings of a device.
    #
    class NetworkSettings < BaseModel

      include MsRestAzure

      # @return [DNSSettings] The DNS (Domain Name System) settings of device.
      attr_accessor :dns_settings

      # @return [NetworkAdapterList] The network adapter list of device.
      attr_accessor :network_adapters

      # @return [WebproxySettings] The webproxy settings of device.
      attr_accessor :webproxy_settings


      #
      # Mapper for NetworkSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkSettings',
          type: {
            name: 'Composite',
            class_name: 'NetworkSettings',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              dns_settings: {
                required: true,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'DNSSettings'
                }
              },
              network_adapters: {
                required: true,
                serialized_name: 'properties.networkAdapters',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkAdapterList'
                }
              },
              webproxy_settings: {
                required: true,
                serialized_name: 'properties.webproxySettings',
                type: {
                  name: 'Composite',
                  class_name: 'WebproxySettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
