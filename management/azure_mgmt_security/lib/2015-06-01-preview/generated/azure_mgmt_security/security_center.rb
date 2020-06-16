# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class SecurityCenter < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] API version for the operation
    attr_reader :api_version

    # @return [String] Azure subscription ID
    attr_accessor :subscription_id

    # @return [String] The location where ASC stores the data of the
    # subscription. can be retrieved from Get locations
    attr_accessor :asc_location

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [AdaptiveNetworkHardenings] adaptive_network_hardenings
    attr_reader :adaptive_network_hardenings

    # @return [Alerts] alerts
    attr_reader :alerts

    # @return [AllowedConnections] allowed_connections
    attr_reader :allowed_connections

    # @return [AdaptiveApplicationControls] adaptive_application_controls
    attr_reader :adaptive_application_controls

    # @return [DiscoveredSecuritySolutions] discovered_security_solutions
    attr_reader :discovered_security_solutions

    # @return [ExternalSecuritySolutions] external_security_solutions
    attr_reader :external_security_solutions

    # @return [JitNetworkAccessPolicies] jit_network_access_policies
    attr_reader :jit_network_access_policies

    # @return [Locations] locations
    attr_reader :locations

    # @return [Operations] operations
    attr_reader :operations

    # @return [Tasks] tasks
    attr_reader :tasks

    # @return [Topology] topology
    attr_reader :topology

    #
    # Creates initializes a new instance of the SecurityCenter class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @adaptive_network_hardenings = AdaptiveNetworkHardenings.new(self)
      @alerts = Alerts.new(self)
      @allowed_connections = AllowedConnections.new(self)
      @adaptive_application_controls = AdaptiveApplicationControls.new(self)
      @discovered_security_solutions = DiscoveredSecuritySolutions.new(self)
      @external_security_solutions = ExternalSecuritySolutions.new(self)
      @jit_network_access_policies = JitNetworkAccessPolicies.new(self)
      @locations = Locations.new(self)
      @operations = Operations.new(self)
      @tasks = Tasks.new(self)
      @topology = Topology.new(self)
      @api_version = '2015-06-01-preview'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_security'
        sdk_information = "#{sdk_information}/0.18.2"
        add_user_agent_information(sdk_information)
    end
  end
end
