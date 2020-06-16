# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_03_01
  module Models
    #
    # Model object.
    #
    #
    class GremlinDatabaseGetPropertiesOptions < OptionsResource

      include MsRestAzure


      #
      # Mapper for GremlinDatabaseGetPropertiesOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinDatabaseGetProperties_options',
          type: {
            name: 'Composite',
            class_name: 'GremlinDatabaseGetPropertiesOptions',
            model_properties: {
              throughput: {
                client_side_validation: true,
                required: false,
                serialized_name: 'throughput',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
