# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  #
  # Composite Swagger for Recovery Services Client
  #
  class VaultExtendedInfoOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the VaultExtendedInfoOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesClient] reference to the RecoveryServicesClient
    attr_reader :client

    #
    # Get the vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VaultExtendedInfoResource] operation results.
    #
    def get(resource_group_name, vault_name, custom_headers = nil)
      response = get_async(resource_group_name, vault_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, vault_name, custom_headers = nil)
      get_async(resource_group_name, vault_name, custom_headers).value!
    end

    #
    # Get the vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, vault_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      api_version = '2016-06-01'
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/extendedInformation/vaultExtendedInfo'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name},
          query_params: {'api-version' => api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServices::Models::VaultExtendedInfoResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Create vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VaultExtendedInfoResource] operation results.
    #
    def create_or_update(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      response = create_or_update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      create_or_update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers).value!
    end

    #
    # Create vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      api_version = '2016-06-01'
      fail ArgumentError, 'resource_resource_extended_info_details is nil' if resource_resource_extended_info_details.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::RecoveryServices::Models::VaultExtendedInfoResource.mapper()
      request_content = @client.serialize(request_mapper,  resource_resource_extended_info_details)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/extendedInformation/vaultExtendedInfo'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServices::Models::VaultExtendedInfoResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [VaultExtendedInfoResource] operation results.
    #
    def update(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      response = update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers).value!
    end

    #
    # Update vault extended info.
    #
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_resource_extended_info_details [VaultExtendedInfoResource]
    # resourceResourceExtendedInfoDetails
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, vault_name, resource_resource_extended_info_details, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      api_version = '2016-06-01'
      fail ArgumentError, 'resource_resource_extended_info_details is nil' if resource_resource_extended_info_details.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::RecoveryServices::Models::VaultExtendedInfoResource.mapper()
      request_content = @client.serialize(request_mapper,  resource_resource_extended_info_details)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/extendedInformation/vaultExtendedInfo'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'vaultName' => vault_name},
          query_params: {'api-version' => api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::RecoveryServices::Models::VaultExtendedInfoResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
