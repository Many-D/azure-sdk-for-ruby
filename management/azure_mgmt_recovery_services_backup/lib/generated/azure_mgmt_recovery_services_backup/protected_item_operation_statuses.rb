# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  #
  # Open API 2.0 Specs for Azure RecoveryServices Backup service
  #
  class ProtectedItemOperationStatuses
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProtectedItemOperationStatuses class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Fetches the status of an operation such as triggering a backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # OperationStatus enum for all the possible states of the operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Backup item name whose details are to be
    # fetched.
    # @param operation_id [String] OperationID represents the operation whose
    # status needs to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def get(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, operation_id, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, operation_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Fetches the status of an operation such as triggering a backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # OperationStatus enum for all the possible states of the operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Backup item name whose details are to be
    # fetched.
    # @param operation_id [String] OperationID represents the operation whose
    # status needs to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, operation_id, custom_headers = nil)
      get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, operation_id, custom_headers).value!
    end

    #
    # Fetches the status of an operation such as triggering a backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # OperationStatus enum for all the possible states of the operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param fabric_name [String] Fabric name associated with the backup item.
    # @param container_name [String] Container name associated with the backup
    # item.
    # @param protected_item_name [String] Backup item name whose details are to be
    # fetched.
    # @param operation_id [String] OperationID represents the operation whose
    # status needs to be fetched.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, fabric_name, container_name, protected_item_name, operation_id, custom_headers = nil)
      api_version = '2016-12-01'
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'fabric_name is nil' if fabric_name.nil?
      fail ArgumentError, 'container_name is nil' if container_name.nil?
      fail ArgumentError, 'protected_item_name is nil' if protected_item_name.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupFabrics/{fabricName}/protectionContainers/{containerName}/protectedItems/{protectedItemName}/operationsStatus/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'fabricName' => fabric_name,'containerName' => container_name,'protectedItemName' => protected_item_name,'operationId' => operation_id},
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
            result_mapper = Azure::ARM::RecoveryServicesBackup::Models::OperationStatus.mapper()
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
