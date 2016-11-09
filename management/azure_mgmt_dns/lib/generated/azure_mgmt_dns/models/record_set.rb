# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns
  module Models
    #
    # Describes a DNS record set (a collection of DNS records with the same
    # name and type).
    #
    class RecordSet

      include MsRestAzure

      # @return [String] The ID of the record set.
      attr_accessor :id

      # @return [String] The name of the record set.
      attr_accessor :name

      # @return [String] The type of the record set.
      attr_accessor :type

      # @return [String] The etag of the record set.
      attr_accessor :etag

      # @return [Hash{String => String}] The metadata attached to the record
      # set.
      attr_accessor :metadata

      # @return [Integer] The TTL (time-to-live) of the records in the record
      # set.
      attr_accessor :ttl

      # @return [Array<ARecord>] The list of A records in the record set.
      attr_accessor :arecords

      # @return [Array<AaaaRecord>] The list of AAAA records in the record set.
      attr_accessor :aaaa_records

      # @return [Array<MxRecord>] The list of MX records in the record set.
      attr_accessor :mx_records

      # @return [Array<NsRecord>] The list of NS records in the record set.
      attr_accessor :ns_records

      # @return [Array<PtrRecord>] The list of PTR records in the record set.
      attr_accessor :ptr_records

      # @return [Array<SrvRecord>] The list of SRV records in the record set.
      attr_accessor :srv_records

      # @return [Array<TxtRecord>] The list of TXT records in the record set.
      attr_accessor :txt_records

      # @return [CnameRecord] The CNAME record in the  record set.
      attr_accessor :cname_record

      # @return [SoaRecord] The SOA record in the record set.
      attr_accessor :soa_record


      #
      # Mapper for RecordSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecordSet',
          type: {
            name: 'Composite',
            class_name: 'RecordSet',
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
                serialized_name: 'name',
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
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                required: false,
                serialized_name: 'properties.metadata',
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
              ttl: {
                required: false,
                serialized_name: 'properties.TTL',
                type: {
                  name: 'Number'
                }
              },
              arecords: {
                required: false,
                serialized_name: 'properties.ARecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ARecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ARecord'
                      }
                  }
                }
              },
              aaaa_records: {
                required: false,
                serialized_name: 'properties.AAAARecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AaaaRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AaaaRecord'
                      }
                  }
                }
              },
              mx_records: {
                required: false,
                serialized_name: 'properties.MXRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'MxRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MxRecord'
                      }
                  }
                }
              },
              ns_records: {
                required: false,
                serialized_name: 'properties.NSRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'NsRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NsRecord'
                      }
                  }
                }
              },
              ptr_records: {
                required: false,
                serialized_name: 'properties.PTRRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PtrRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PtrRecord'
                      }
                  }
                }
              },
              srv_records: {
                required: false,
                serialized_name: 'properties.SRVRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'SrvRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SrvRecord'
                      }
                  }
                }
              },
              txt_records: {
                required: false,
                serialized_name: 'properties.TXTRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TxtRecordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TxtRecord'
                      }
                  }
                }
              },
              cname_record: {
                required: false,
                serialized_name: 'properties.CNAMERecord',
                type: {
                  name: 'Composite',
                  class_name: 'CnameRecord'
                }
              },
              soa_record: {
                required: false,
                serialized_name: 'properties.SOARecord',
                type: {
                  name: 'Composite',
                  class_name: 'SoaRecord'
                }
              }
            }
          }
        }
      end
    end
  end
end
