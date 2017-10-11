# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # Definition of the dsc node type.
    #
    class DscNode < Resource

      include MsRestAzure

      # @return [DateTime] Gets or sets the last seen time of the node.
      attr_accessor :last_seen

      # @return [DateTime] Gets or sets the registration time of the node.
      attr_accessor :registration_time

      # @return [String] Gets or sets the ip of the node.
      attr_accessor :ip

      # @return [String] Gets or sets the account id of the node.
      attr_accessor :account_id

      # @return [DscNodeConfigurationAssociationProperty] Gets or sets the
      # configuration of the node.
      attr_accessor :node_configuration

      # @return [String] Gets or sets the status of the node.
      attr_accessor :status

      # @return [String] Gets or sets the node id.
      attr_accessor :node_id

      # @return [String] Gets or sets the etag of the resource.
      attr_accessor :etag


      #
      # Mapper for DscNode class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DscNode',
          type: {
            name: 'Composite',
            class_name: 'DscNode',
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
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              last_seen: {
                required: false,
                serialized_name: 'lastSeen',
                type: {
                  name: 'DateTime'
                }
              },
              registration_time: {
                required: false,
                serialized_name: 'registrationTime',
                type: {
                  name: 'DateTime'
                }
              },
              ip: {
                required: false,
                serialized_name: 'ip',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                required: false,
                serialized_name: 'accountId',
                type: {
                  name: 'String'
                }
              },
              node_configuration: {
                required: false,
                serialized_name: 'nodeConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'DscNodeConfigurationAssociationProperty'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              node_id: {
                required: false,
                serialized_name: 'nodeId',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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
