# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Automation::Api_2015_10_31
  module Models
    #
    # The parameters supplied to the create or update runbook operation.
    #
    class RunbookCreateOrUpdateParameters

      include MsRestAzure

      # @return [Boolean] Gets or sets verbose log option.
      attr_accessor :log_verbose

      # @return [Boolean] Gets or sets progress log option.
      attr_accessor :log_progress

      # @return [RunbookTypeEnum] Gets or sets the type of the runbook.
      # Possible values include: 'Script', 'Graph', 'PowerShellWorkflow',
      # 'PowerShell', 'GraphPowerShellWorkflow', 'GraphPowerShell'
      attr_accessor :runbook_type

      # @return [RunbookDraft] Gets or sets the draft runbook properties.
      attr_accessor :draft

      # @return [ContentLink] Gets or sets the published runbook content link.
      attr_accessor :publish_content_link

      # @return [String] Gets or sets the description of the runbook.
      attr_accessor :description

      # @return [Integer] Gets or sets the activity-level tracing options of
      # the runbook.
      attr_accessor :log_activity_trace

      # @return [String] Gets or sets the name of the resource.
      attr_accessor :name

      # @return [String] Gets or sets the location of the resource.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags attached to the
      # resource.
      attr_accessor :tags


      #
      # Mapper for RunbookCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunbookCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RunbookCreateOrUpdateParameters',
            model_properties: {
              log_verbose: {
                required: false,
                serialized_name: 'properties.logVerbose',
                type: {
                  name: 'Boolean'
                }
              },
              log_progress: {
                required: false,
                serialized_name: 'properties.logProgress',
                type: {
                  name: 'Boolean'
                }
              },
              runbook_type: {
                required: true,
                serialized_name: 'properties.runbookType',
                type: {
                  name: 'String'
                }
              },
              draft: {
                required: false,
                serialized_name: 'properties.draft',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookDraft'
                }
              },
              publish_content_link: {
                required: false,
                serialized_name: 'properties.publishContentLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              log_activity_trace: {
                required: false,
                serialized_name: 'properties.logActivityTrace',
                type: {
                  name: 'Number'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
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
              }
            }
          }
        }
      end
    end
  end
end
