# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement
  module Models
    #
    # the parameters to a powershell script execution command
    #
    class PowerShellCommandParameters

      include MsRestAzure

      # @return [String] Script to execute
      attr_accessor :command


      #
      # Mapper for PowerShellCommandParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PowerShellCommandParameters',
          type: {
            name: 'Composite',
            class_name: 'PowerShellCommandParameters',
            model_properties: {
              command: {
                required: false,
                serialized_name: 'properties.command',
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
