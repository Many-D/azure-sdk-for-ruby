# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_09_01
  module Models
    #
    # Effective network security rules.
    #
    class EffectiveNetworkSecurityRule

      include MsRestAzure

      # @return [String] The name of the security rule specified by the user
      # (if created by the user).
      attr_accessor :name

      # @return [SecurityRuleProtocol] The network protocol this rule applies
      # to. Possible values are: 'Tcp', 'Udp', and '*'. Possible values
      # include: 'Tcp', 'Udp', '*'
      attr_accessor :protocol

      # @return [String] The source port or range.
      attr_accessor :source_port_range

      # @return [String] The destination port or range.
      attr_accessor :destination_port_range

      # @return [String] The source address prefix.
      attr_accessor :source_address_prefix

      # @return [String] The destination address prefix.
      attr_accessor :destination_address_prefix

      # @return [Array<String>] The expanded source address prefix.
      attr_accessor :expanded_source_address_prefix

      # @return [Array<String>] Expanded destination address prefix.
      attr_accessor :expanded_destination_address_prefix

      # @return [SecurityRuleAccess] Whether network traffic is allowed or
      # denied. Possible values are: 'Allow' and 'Deny'. Possible values
      # include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] The priority of the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] The direction of the rule. Possible
      # values are: 'Inbound and Outbound'. Possible values include: 'Inbound',
      # 'Outbound'
      attr_accessor :direction


      #
      # Mapper for EffectiveNetworkSecurityRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EffectiveNetworkSecurityRule',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityRule',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source_port_range: {
                required: false,
                serialized_name: 'sourcePortRange',
                type: {
                  name: 'String'
                }
              },
              destination_port_range: {
                required: false,
                serialized_name: 'destinationPortRange',
                type: {
                  name: 'String'
                }
              },
              source_address_prefix: {
                required: false,
                serialized_name: 'sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_address_prefix: {
                required: false,
                serialized_name: 'destinationAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              expanded_source_address_prefix: {
                required: false,
                serialized_name: 'expandedSourceAddressPrefix',
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
              },
              expanded_destination_address_prefix: {
                required: false,
                serialized_name: 'expandedDestinationAddressPrefix',
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
              },
              access: {
                required: false,
                serialized_name: 'access',
                type: {
                  name: 'String'
                }
              },
              priority: {
                required: false,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              direction: {
                required: false,
                serialized_name: 'direction',
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
