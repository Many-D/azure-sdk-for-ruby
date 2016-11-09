# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  #
  # Composite Swagger for Insights Management Client
  #
  class AlertRuleIncidents
    include Azure::ARM::Insights::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AlertRuleIncidents class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [InsightsManagementClient] reference to the InsightsManagementClient
    attr_reader :client

    #
    # Gets an incident associated to an alert rule
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param rule_name [String] The name of the rule.
    # @param incident_name [String] The name of the incident to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Incident] operation results.
    #
    def get(resource_group_name, rule_name, incident_name, custom_headers = nil)
      response = get_async(resource_group_name, rule_name, incident_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an incident associated to an alert rule
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param rule_name [String] The name of the rule.
    # @param incident_name [String] The name of the incident to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, rule_name, incident_name, custom_headers = nil)
      get_async(resource_group_name, rule_name, incident_name, custom_headers).value!
    end

    #
    # Gets an incident associated to an alert rule
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param rule_name [String] The name of the rule.
    # @param incident_name [String] The name of the incident to retrieve.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, rule_name, incident_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'rule_name is nil' if rule_name.nil?
      fail ArgumentError, 'incident_name is nil' if incident_name.nil?
      api_version = '2016-03-01'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/microsoft.insights/alertrules/{ruleName}/incidents/{incidentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'ruleName' => rule_name,'incidentName' => incident_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Incident.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
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
