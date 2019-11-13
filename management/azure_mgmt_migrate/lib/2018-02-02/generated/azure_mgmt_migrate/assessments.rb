# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  #
  # Move your workloads to Azure.
  #
  class Assessments
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Assessments class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureMigrate] reference to the AzureMigrate
    attr_reader :client

    #
    # Get all assessments created for the specified group.
    #
    # Get all assessments created for the specified group.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssessmentResultList] operation results.
    #
    def list_by_group(resource_group_name, project_name, group_name, custom_headers:nil)
      response = list_by_group_async(resource_group_name, project_name, group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all assessments created for the specified group.
    #
    # Get all assessments created for the specified group.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_group_with_http_info(resource_group_name, project_name, group_name, custom_headers:nil)
      list_by_group_async(resource_group_name, project_name, group_name, custom_headers:custom_headers).value!
    end

    #
    # Get all assessments created for the specified group.
    #
    # Get all assessments created for the specified group.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_group_async(resource_group_name, project_name, group_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name},
          query_params: {'api-version' => @client.api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentResultList.mapper()
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
    # Get all assessments created in the project.
    #
    # Get all assessments created in the project.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AssessmentResultList] operation results.
    #
    def list_by_project(resource_group_name, project_name, custom_headers:nil)
      response = list_by_project_async(resource_group_name, project_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get all assessments created in the project.
    #
    # Get all assessments created in the project.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_project_with_http_info(resource_group_name, project_name, custom_headers:nil)
      list_by_project_async(resource_group_name, project_name, custom_headers:custom_headers).value!
    end

    #
    # Get all assessments created in the project.
    #
    # Get all assessments created in the project.
    #
    # Returns a json array of objects of type 'assessment' as specified in Models
    # section.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_project_async(resource_group_name, project_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/assessments'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name},
          query_params: {'api-version' => @client.api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::AssessmentResultList.mapper()
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
    # Get an assessment.
    #
    # Get an existing assessment with the specified name. Returns a json object of
    # type 'assessment' as specified in Models section.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Assessment] operation results.
    #
    def get(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      response = get_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get an assessment.
    #
    # Get an existing assessment with the specified name. Returns a json object of
    # type 'assessment' as specified in Models section.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      get_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
    end

    #
    # Get an assessment.
    #
    # Get an existing assessment with the specified name. Returns a json object of
    # type 'assessment' as specified in Models section.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name},
          query_params: {'api-version' => @client.api_version},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment.mapper()
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
    # Create or Update assessment.
    #
    # Create a new assessment with the given name and the specified settings. Since
    # name of an assessment in a project is a unique identifier, if an assessment
    # with the name provided already exists, then the existing assessment is
    # updated.
    #
    # Any PUT operation, resulting in either create or update on an assessment,
    # will cause the assessment to go in a "InProgress" state. This will be
    # indicated by the field 'computationState' on the Assessment object. During
    # this time no other PUT operation will be allowed on that assessment object,
    # nor will a Delete operation. Once the computation for the assessment is
    # complete, the field 'computationState' will be updated to 'Ready', and then
    # other PUT or DELETE operations can happen on the assessment.
    #
    # When assessment is under computation, any PUT will lead to a 400 - Bad
    # Request error.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessment [Assessment] New or Updated Assessment object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Assessment] operation results.
    #
    def create(resource_group_name, project_name, group_name, assessment_name, assessment:nil, custom_headers:nil)
      response = create_async(resource_group_name, project_name, group_name, assessment_name, assessment:assessment, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or Update assessment.
    #
    # Create a new assessment with the given name and the specified settings. Since
    # name of an assessment in a project is a unique identifier, if an assessment
    # with the name provided already exists, then the existing assessment is
    # updated.
    #
    # Any PUT operation, resulting in either create or update on an assessment,
    # will cause the assessment to go in a "InProgress" state. This will be
    # indicated by the field 'computationState' on the Assessment object. During
    # this time no other PUT operation will be allowed on that assessment object,
    # nor will a Delete operation. Once the computation for the assessment is
    # complete, the field 'computationState' will be updated to 'Ready', and then
    # other PUT or DELETE operations can happen on the assessment.
    #
    # When assessment is under computation, any PUT will lead to a 400 - Bad
    # Request error.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessment [Assessment] New or Updated Assessment object.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(resource_group_name, project_name, group_name, assessment_name, assessment:nil, custom_headers:nil)
      create_async(resource_group_name, project_name, group_name, assessment_name, assessment:assessment, custom_headers:custom_headers).value!
    end

    #
    # Create or Update assessment.
    #
    # Create a new assessment with the given name and the specified settings. Since
    # name of an assessment in a project is a unique identifier, if an assessment
    # with the name provided already exists, then the existing assessment is
    # updated.
    #
    # Any PUT operation, resulting in either create or update on an assessment,
    # will cause the assessment to go in a "InProgress" state. This will be
    # indicated by the field 'computationState' on the Assessment object. During
    # this time no other PUT operation will be allowed on that assessment object,
    # nor will a Delete operation. Once the computation for the assessment is
    # complete, the field 'computationState' will be updated to 'Ready', and then
    # other PUT or DELETE operations can happen on the assessment.
    #
    # When assessment is under computation, any PUT will lead to a 400 - Bad
    # Request error.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param assessment [Assessment] New or Updated Assessment object.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(resource_group_name, project_name, group_name, assessment_name, assessment:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment.mapper()
      request_content = @client.serialize(request_mapper,  assessment)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::Assessment.mapper()
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
    # Deletes an assessment from the project.
    #
    # Delete an assessment from the project. The machines remain in the assessment.
    # Deleting a non-existent assessment results in a no-operation.
    #
    # When an assessment is under computation, as indicated by the
    # 'computationState' field, it cannot be deleted. Any such attempt will return
    # a 400 - Bad Request.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      response = delete_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes an assessment from the project.
    #
    # Delete an assessment from the project. The machines remain in the assessment.
    # Deleting a non-existent assessment results in a no-operation.
    #
    # When an assessment is under computation, as indicated by the
    # 'computationState' field, it cannot be deleted. Any such attempt will return
    # a 400 - Bad Request.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      delete_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes an assessment from the project.
    #
    # Delete an assessment from the project. The machines remain in the assessment.
    # Deleting a non-existent assessment results in a no-operation.
    #
    # When an assessment is under computation, as indicated by the
    # 'computationState' field, it cannot be deleted. Any such attempt will return
    # a 400 - Bad Request.
    #
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Get download URL for the assessment report.
    #
    # Get the URL for downloading the assessment in a report format.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DownloadUrl] operation results.
    #
    def get_report_download_url(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      response = get_report_download_url_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get download URL for the assessment report.
    #
    # Get the URL for downloading the assessment in a report format.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_report_download_url_with_http_info(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      get_report_download_url_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:custom_headers).value!
    end

    #
    # Get download URL for the assessment report.
    #
    # Get the URL for downloading the assessment in a report format.
    #
    # @param resource_group_name [String] Name of the Azure Resource Group that
    # project is part of.
    # @param project_name [String] Name of the Azure Migrate project.
    # @param group_name [String] Unique name of a group within a project.
    # @param assessment_name [String] Unique name of an assessment within a
    # project.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_report_download_url_async(resource_group_name, project_name, group_name, assessment_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'assessment_name is nil' if assessment_name.nil?
      @client.api_version = '2018-02-02'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}/assessments/{assessmentName}/downloadUrl'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'projectName' => project_name,'groupName' => group_name,'assessmentName' => assessment_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Migrate::Mgmt::V2018_02_02::Models::DownloadUrl.mapper()
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