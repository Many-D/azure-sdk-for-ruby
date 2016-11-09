# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class JobCollectionProperties

      include MsRestAzure

      # @return [Sku] Gets or sets the SKU.
      attr_accessor :sku

      # @return [JobCollectionState] Gets or sets the state. Possible values
      # include: 'Enabled', 'Disabled', 'Suspended', 'Deleted'
      attr_accessor :state

      # @return [JobCollectionQuota] Gets or sets the job collection quota.
      attr_accessor :quota


      #
      # Mapper for JobCollectionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobCollectionProperties',
          type: {
            name: 'Composite',
            class_name: 'JobCollectionProperties',
            model_properties: {
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobCollectionState'
                }
              },
              quota: {
                required: false,
                serialized_name: 'quota',
                type: {
                  name: 'Composite',
                  class_name: 'JobCollectionQuota'
                }
              }
            }
          }
        }
      end
    end
  end
end
