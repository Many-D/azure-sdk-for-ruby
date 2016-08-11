# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics::Catalog
  module Models
    #
    # A Data Lake Analytics catalog U-SQL dependency information item.
    #
    class USqlAssemblyDependencyInfo

      include MsRestAzure

      # @return [EntityId] the EntityId of the dependency.
      attr_accessor :entity_id


      #
      # Mapper for USqlAssemblyDependencyInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'USqlAssemblyDependencyInfo',
          type: {
            name: 'Composite',
            class_name: 'USqlAssemblyDependencyInfo',
            model_properties: {
              entity_id: {
                required: false,
                serialized_name: 'entityId',
                type: {
                  name: 'Composite',
                  class_name: 'EntityId'
                }
              }
            }
          }
        }
      end
    end
  end
end