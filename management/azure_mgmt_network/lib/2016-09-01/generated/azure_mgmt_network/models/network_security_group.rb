# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_09_01
  module Models
    #
    # NetworkSecurityGroup resource.
    #
    class NetworkSecurityGroup < Resource

      include MsRestAzure

      # @return [Array<SecurityRule>] A collection of security rules of the
      # network security group.
      attr_accessor :security_rules

      # @return [Array<SecurityRule>] The default security rules of network
      # security group.
      attr_accessor :default_security_rules

      # @return [Array<NetworkInterface>] A collection of references to network
      # interfaces.
      attr_accessor :network_interfaces

      # @return [Array<Subnet>] A collection of references to subnets.
      attr_accessor :subnets

      # @return [String] The resource GUID property of the network security
      # group resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the public IP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for NetworkSecurityGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkSecurityGroup',
          type: {
            name: 'Composite',
            class_name: 'NetworkSecurityGroup',
            model_properties: {
              id: {
                required: false,
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
                required: false,
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
              security_rules: {
                required: false,
                serialized_name: 'properties.securityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
                      }
                  }
                }
              },
              default_security_rules: {
                required: false,
                serialized_name: 'properties.defaultSecurityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
                      }
                  }
                }
              },
              network_interfaces: {
                required: false,
                read_only: true,
                serialized_name: 'properties.networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterface'
                      }
                  }
                }
              },
              subnets: {
                required: false,
                read_only: true,
                serialized_name: 'properties.subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
