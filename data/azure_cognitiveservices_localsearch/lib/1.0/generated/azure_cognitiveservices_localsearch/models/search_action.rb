# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LocalSearch::V1_0
  module Models
    #
    # Model object.
    #
    #
    class SearchAction < Action

      include MsRestAzure


      def initialize
        @_type = "SearchAction"
      end

      attr_accessor :_type

      # @return [String]
      attr_accessor :display_text

      # @return [String]
      attr_accessor :query

      # @return [Array<Answer>]
      attr_accessor :rich_content

      # @return [String]
      attr_accessor :formatting_rule_id


      #
      # Mapper for SearchAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SearchAction',
          type: {
            name: 'Composite',
            class_name: 'SearchAction',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              read_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'readLink',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              potential_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'potentialAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              immediate_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'immediateAction',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Action'
                      }
                  }
                }
              },
              preferred_clickthrough_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'preferredClickthroughUrl',
                type: {
                  name: 'String'
                }
              },
              adaptive_card: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'adaptiveCard',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              entity_presentation_info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'entityPresentationInfo',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '_type',
                  uber_parent: 'EntitiesEntityPresentationInfo',
                  class_name: 'EntitiesEntityPresentationInfo'
                }
              },
              thumbnail_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'thumbnailUrl',
                type: {
                  name: 'String'
                }
              },
              about: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'about',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              mentions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mentions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provider',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              creator: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creator',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'text',
                type: {
                  name: 'String'
                }
              },
              discussion_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'discussionUrl',
                type: {
                  name: 'String'
                }
              },
              comment_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'commentCount',
                type: {
                  name: 'Number'
                }
              },
              main_entity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mainEntity',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              head_line: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'headLine',
                type: {
                  name: 'String'
                }
              },
              copyright_holder: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyrightHolder',
                type: {
                  name: 'Composite',
                  class_name: 'Thing'
                }
              },
              copyright_year: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'copyrightYear',
                type: {
                  name: 'Number'
                }
              },
              disclaimer: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'disclaimer',
                type: {
                  name: 'String'
                }
              },
              is_accessible_for_free: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isAccessibleForFree',
                type: {
                  name: 'Boolean'
                }
              },
              genre: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'genre',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_family_friendly: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isFamilyFriendly',
                type: {
                  name: 'Boolean'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PlaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Place'
                      }
                  }
                }
              },
              result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'result',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Thing'
                      }
                  }
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              is_top_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isTopAction',
                type: {
                  name: 'Boolean'
                }
              },
              service_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceUrl',
                type: {
                  name: 'String'
                }
              },
              display_text: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'displayText',
                type: {
                  name: 'String'
                }
              },
              query: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'query',
                type: {
                  name: 'String'
                }
              },
              rich_content: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'richContent',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AnswerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Answer'
                      }
                  }
                }
              },
              formatting_rule_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'formattingRuleId',
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
