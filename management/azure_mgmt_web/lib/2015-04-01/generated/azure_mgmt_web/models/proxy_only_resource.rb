# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2015_04_01
  module Models
    #
    # Azure proxy only resource. This resource is not tracked by Azure Resource
    # Manager.
    #
    class ProxyOnlyResource

      include MsRestAzure

      # @return [String] Resource Id.
      attr_accessor :id

      # @return [String] Resource Name.
      attr_accessor :name

      # @return [String] Kind of resource.
      attr_accessor :kind

      # @return [String] Resource type.
      attr_accessor :type


      #
      # Mapper for ProxyOnlyResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProxyOnlyResource',
          type: {
            name: 'Composite',
            class_name: 'ProxyOnlyResource',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              }
            }
          }
        }
      end
    end
  end
end
