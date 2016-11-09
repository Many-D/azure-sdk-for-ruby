# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class CampaignResult < Campaign

      include MsRestAzure

      # @return [Integer] Campaign identifier.
      attr_accessor :id

      # @return [CampaignStates] State of the campaign, or 'queued' when
      # testing a campaign. Possible values include: 'draft', 'scheduled',
      # 'in-progress', 'finished', 'queued'
      attr_accessor :state

      # @return [DateTime] The date at which the campaign was activated (Not
      # present if not yet activated). The date conforms to the following
      # format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
      attr_accessor :activated_date

      # @return [DateTime] The date at which the campaign was finished (Not
      # present if not yet finished). The date conforms to the following
      # format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard.
      attr_accessor :finished_date


      #
      # Mapper for CampaignResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignResult',
          type: {
            name: 'Composite',
            class_name: 'CampaignResult',
            model_properties: {
              notification_title: {
                required: false,
                serialized_name: 'notificationTitle',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              notification_message: {
                required: false,
                serialized_name: 'notificationMessage',
                constraints: {
                  MaxLength: 4000
                },
                type: {
                  name: 'String'
                }
              },
              notification_image: {
                required: false,
                serialized_name: 'notificationImage',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'ByteArray'
                }
              },
              notification_options: {
                required: false,
                serialized_name: 'notificationOptions',
                type: {
                  name: 'Composite',
                  class_name: 'NotificationOptions'
                }
              },
              title: {
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              body: {
                required: false,
                serialized_name: 'body',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'String'
                }
              },
              action_button_text: {
                required: false,
                serialized_name: 'actionButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              exit_button_text: {
                required: false,
                serialized_name: 'exitButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              action_url: {
                required: false,
                serialized_name: 'actionUrl',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              payload: {
                required: false,
                serialized_name: 'payload',
                type: {
                  name: 'Object'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              audience: {
                required: false,
                serialized_name: 'audience',
                type: {
                  name: 'Composite',
                  class_name: 'CampaignAudience'
                }
              },
              category: {
                required: false,
                serialized_name: 'category',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              push_mode: {
                required: false,
                serialized_name: 'pushMode',
                default_value: 'real-time',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              delivery_time: {
                required: false,
                serialized_name: 'deliveryTime',
                type: {
                  name: 'String'
                }
              },
              delivery_activities: {
                required: false,
                serialized_name: 'deliveryActivities',
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
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'String'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'String'
                }
              },
              timezone: {
                required: false,
                serialized_name: 'timezone',
                type: {
                  name: 'String'
                }
              },
              notification_type: {
                required: false,
                serialized_name: 'notificationType',
                default_value: 'popup',
                type: {
                  name: 'String'
                }
              },
              notification_icon: {
                required: false,
                serialized_name: 'notificationIcon',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              notification_closeable: {
                required: false,
                serialized_name: 'notificationCloseable',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              notification_vibrate: {
                required: false,
                serialized_name: 'notificationVibrate',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              notification_sound: {
                required: false,
                serialized_name: 'notificationSound',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              notification_badge: {
                required: false,
                serialized_name: 'notificationBadge',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              localization: {
                required: false,
                serialized_name: 'localization',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'CampaignLocalizationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CampaignLocalization'
                      }
                  }
                }
              },
              questions: {
                required: false,
                serialized_name: 'questions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PollQuestionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PollQuestion'
                      }
                  }
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              activated_date: {
                required: false,
                serialized_name: 'activatedDate',
                type: {
                  name: 'DateTime'
                }
              },
              finished_date: {
                required: false,
                serialized_name: 'finishedDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
