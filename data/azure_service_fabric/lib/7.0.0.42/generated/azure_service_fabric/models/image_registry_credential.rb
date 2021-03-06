# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Image registry credential.
    #
    class ImageRegistryCredential

      include MsRestAzure

      # @return [String] Docker image registry server, without protocol such as
      # `http` and `https`.
      attr_accessor :server

      # @return [String] The username for the private registry.
      attr_accessor :username

      # @return [ImageRegistryPasswordType] The type of the image registry
      # password being given in password. Possible values include: 'ClearText',
      # 'KeyVaultReference', 'SecretValueReference'. Default value: 'ClearText'
      # .
      attr_accessor :password_type

      # @return [String] The password for the private registry. The password is
      # required for create or update operations, however it is not returned in
      # the get or list operations. Will be processed based on the type
      # provided.
      attr_accessor :password


      #
      # Mapper for ImageRegistryCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageRegistryCredential',
          type: {
            name: 'Composite',
            class_name: 'ImageRegistryCredential',
            model_properties: {
              server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'server',
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwordType',
                default_value: 'ClearText',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
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
