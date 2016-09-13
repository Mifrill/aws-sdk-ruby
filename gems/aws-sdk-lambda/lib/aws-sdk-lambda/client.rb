# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module Lambda
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs
      include Aws::ClientWaiters

      @identifier = :lambda

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::RequestSigner)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::Protocols::RestJson)

      # @!group API Operations

      # Adds a permission to the resource policy associated with the specified
      # AWS Lambda function. You use resource policies to grant permissions to
      # event sources that use *push* model. In a *push* model, event sources
      # (such as Amazon S3 and custom applications) invoke your Lambda
      # function. Each permission you add to the resource policy allows an
      # event source, permission to invoke the Lambda function.
      #
      # For information about the push model, see [AWS Lambda: How it
      # Works][1].
      #
      # If you are using versioning, the permissions you add are specific to
      # the Lambda function version or alias you specify in the
      # `AddPermission` request via the `Qualifier` parameter. For more
      # information about versioning, see [AWS Lambda Function Versioning and
      # Aliases][2].
      #
      # This operation requires permission for the `lambda:AddPermission`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
      # [2]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   Name of the Lambda function whose resource policy you are updating by
      #   adding a new permission.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [required, String] :statement_id
      #   A unique statement identifier.
      # @option params [required, String] :action
      #   The AWS Lambda action you want to allow in this statement. Each Lambda
      #   action is a string starting with `lambda:` followed by the API name .
      #   For example, `lambda:CreateFunction`. You can use wildcard
      #   (`lambda:*`) to grant permission for all AWS Lambda actions.
      # @option params [required, String] :principal
      #   The principal who is getting this permission. It can be Amazon S3
      #   service Principal (`s3.amazonaws.com`) if you want Amazon S3 to invoke
      #   the function, an AWS account ID if you are granting cross-account
      #   permission, or any valid AWS service principal such as
      #   `sns.amazonaws.com`. For example, you might want to allow a custom
      #   application in another AWS account to push events to AWS Lambda by
      #   invoking your function.
      # @option params [String] :source_arn
      #   This is optional; however, when granting Amazon S3 permission to
      #   invoke your function, you should specify this field with the Amazon
      #   Resource Name (ARN) as its value. This ensures that only events
      #   generated from the specified source can invoke the function.
      #
      #   <important markdown="1">If you add a permission for the Amazon S3 principal without providing
      #   the source ARN, any AWS account that creates a mapping to your
      #   function ARN can send events to invoke your Lambda function from
      #   Amazon S3.
      #
      #    </important>
      # @option params [String] :source_account
      #   This parameter is used for S3 and SES only. The AWS account ID
      #   (without a hyphen) of the source owner. For example, if the
      #   `SourceArn` identifies a bucket, then this is the bucket owner\'s
      #   account ID. You can use this additional condition to ensure the bucket
      #   you specify is owned by a specific account (it is possible the bucket
      #   owner deleted the bucket and some other AWS account created the
      #   bucket). You can also use this condition to specify all sources (that
      #   is, you don\'t specify the `SourceArn`) owned by a specific account.
      # @option params [String] :event_source_token
      #   A unique token that must be supplied by the principal invoking the
      #   function. This is currently only used for Alexa Smart Home functions.
      # @option params [String] :qualifier
      #   You can use this optional query parameter to describe a qualified ARN
      #   using a function version or an alias name. The permission will then
      #   apply to the specific qualified ARN. For example, if you specify
      #   function version 2 as the qualifier, then permission applies only when
      #   request is made using qualified function ARN:
      #
      #   `arn:aws:lambda:aws-region:acct-id:function:function-name:2`
      #
      #   If you specify an alias name, for example `PROD`, then the permission
      #   is valid only for requests made using the alias ARN:
      #
      #   `arn:aws:lambda:aws-region:acct-id:function:function-name:PROD`
      #
      #   If the qualifier is not specified, the permission is valid only when
      #   requests is made using unqualified function ARN.
      #
      #   `arn:aws:lambda:aws-region:acct-id:function:function-name`
      # @return [Types::AddPermissionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AddPermissionResponse#statement #Statement} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.add_permission({
      #     function_name: "FunctionName", # required
      #     statement_id: "StatementId", # required
      #     action: "Action", # required
      #     principal: "Principal", # required
      #     source_arn: "Arn",
      #     source_account: "SourceOwner",
      #     event_source_token: "EventSourceToken",
      #     qualifier: "Qualifier",
      #   })
      #
      # @example Response structure
      #   resp.statement #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def add_permission(params = {}, options = {})
        req = build_request(:add_permission, params)
        req.send_request(options)
      end

      # Creates an alias that points to the specified Lambda function version.
      # For more information, see [Introduction to AWS Lambda Aliases][1].
      #
      # Alias names are unique for a given function. This requires permission
      # for the lambda:CreateAlias action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
      # @option params [required, String] :function_name
      #   Name of the Lambda function for which you want to create an alias.
      # @option params [required, String] :name
      #   Name for the alias you are creating.
      # @option params [required, String] :function_version
      #   Lambda function version for which you are creating the alias.
      # @option params [String] :description
      #   Description of the alias.
      # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AliasConfiguration#alias_arn #AliasArn} => String
      #   * {Types::AliasConfiguration#name #Name} => String
      #   * {Types::AliasConfiguration#function_version #FunctionVersion} => String
      #   * {Types::AliasConfiguration#description #Description} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_alias({
      #     function_name: "FunctionName", # required
      #     name: "Alias", # required
      #     function_version: "Version", # required
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.alias_arn #=> String
      #   resp.name #=> String
      #   resp.function_version #=> String
      #   resp.description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_alias(params = {}, options = {})
        req = build_request(:create_alias, params)
        req.send_request(options)
      end

      # Identifies a stream as an event source for a Lambda function. It can
      # be either an Amazon Kinesis stream or an Amazon DynamoDB stream. AWS
      # Lambda invokes the specified function when records are posted to the
      # stream.
      #
      # This association between a stream source and a Lambda function is
      # called the event source mapping.
      #
      # <important markdown="1">This event source mapping is relevant only in the AWS Lambda pull
      # model, where AWS Lambda invokes the function. For more information, go
      # to [AWS Lambda: How it Works][1] in the *AWS Lambda Developer Guide*.
      #
      #  </important>
      #
      # You provide mapping information (for example, which stream to read
      # from and which Lambda function to invoke) in the request body.
      #
      # Each event source, such as an Amazon Kinesis or a DynamoDB stream, can
      # be associated with multiple AWS Lambda function. A given Lambda
      # function can be associated with multiple AWS event sources.
      #
      # If you are using versioning, you can specify a specific function
      # version or an alias via the function name parameter. For more
      # information about versioning, see [AWS Lambda Function Versioning and
      # Aliases][2].
      #
      # This operation requires permission for the
      # `lambda:CreateEventSourceMapping` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
      # [2]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :event_source_arn
      #   The Amazon Resource Name (ARN) of the Amazon Kinesis or the Amazon
      #   DynamoDB stream that is the event source. Any record added to this
      #   stream could cause AWS Lambda to invoke your Lambda function, it
      #   depends on the `BatchSize`. AWS Lambda POSTs the Amazon Kinesis event,
      #   containing records, to your Lambda function as JSON.
      # @option params [required, String] :function_name
      #   The Lambda function to invoke when AWS Lambda detects an event on the
      #   stream.
      #
      #   You can specify the function name (for example, `Thumbnail`) or you
      #   can specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`).
      #
      #   If you are using versioning, you can also provide a qualified function
      #   ARN (ARN that is qualified with function version or alias name as
      #   suffix). For more information about versioning, see [AWS Lambda
      #   Function Versioning and Aliases][1]
      #
      #   AWS Lambda also allows you to specify only the function name with the
      #   account ID qualifier (for example, `account-id:Thumbnail`).
      #
      #   Note that the length constraint applies only to the ARN. If you
      #   specify only the function name, it is limited to 64 character in
      #   length.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [Boolean] :enabled
      #   Indicates whether AWS Lambda should begin polling the event source. By
      #   default, `Enabled` is true.
      # @option params [Integer] :batch_size
      #   The largest number of records that AWS Lambda will retrieve from your
      #   event source at the time of invoking your function. Your function
      #   receives an event with all the retrieved records. The default is 100
      #   records.
      # @option params [required, String] :starting_position
      #   The position in the stream where AWS Lambda should start reading. For
      #   more information, go to [ShardIteratorType][1] in the *Amazon Kinesis
      #   API Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/kinesis/latest/APIReference/API_GetShardIterator.html#Kinesis-GetShardIterator-request-ShardIteratorType
      # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventSourceMappingConfiguration#uuid #UUID} => String
      #   * {Types::EventSourceMappingConfiguration#batch_size #BatchSize} => Integer
      #   * {Types::EventSourceMappingConfiguration#event_source_arn #EventSourceArn} => String
      #   * {Types::EventSourceMappingConfiguration#function_arn #FunctionArn} => String
      #   * {Types::EventSourceMappingConfiguration#last_modified #LastModified} => Time
      #   * {Types::EventSourceMappingConfiguration#last_processing_result #LastProcessingResult} => String
      #   * {Types::EventSourceMappingConfiguration#state #State} => String
      #   * {Types::EventSourceMappingConfiguration#state_transition_reason #StateTransitionReason} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_event_source_mapping({
      #     event_source_arn: "Arn", # required
      #     function_name: "FunctionName", # required
      #     enabled: false,
      #     batch_size: 1,
      #     starting_position: "TRIM_HORIZON", # required, accepts TRIM_HORIZON, LATEST
      #   })
      #
      # @example Response structure
      #   resp.uuid #=> String
      #   resp.batch_size #=> Integer
      #   resp.event_source_arn #=> String
      #   resp.function_arn #=> String
      #   resp.last_modified #=> Time
      #   resp.last_processing_result #=> String
      #   resp.state #=> String
      #   resp.state_transition_reason #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_event_source_mapping(params = {}, options = {})
        req = build_request(:create_event_source_mapping, params)
        req.send_request(options)
      end

      # Creates a new Lambda function. The function metadata is created from
      # the request parameters, and the code for the function is provided by a
      # .zip file in the request body. If the function name already exists,
      # the operation will fail. Note that the function name is
      # case-sensitive.
      #
      # If you are using versioning, you can also publish a version of the
      # Lambda function you are creating using the `Publish` parameter. For
      # more information about versioning, see [AWS Lambda Function Versioning
      # and Aliases][1].
      #
      # This operation requires permission for the `lambda:CreateFunction`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The name you want to assign to the function you are uploading. The
      #   function names appear in the console and are returned in the
      #   ListFunctions API. Function names are used to specify functions to
      #   other AWS Lambda APIs, such as Invoke.
      # @option params [required, String] :runtime
      #   The runtime environment for the Lambda function you are uploading.
      #
      #   To use the Node.js runtime v4.3, set the value to \"nodejs4.3\". To
      #   use earlier runtime (v0.10.42), set the value to \"nodejs\".
      # @option params [required, String] :role
      #   The Amazon Resource Name (ARN) of the IAM role that Lambda assumes
      #   when it executes your function to access any other Amazon Web Services
      #   (AWS) resources. For more information, see [AWS Lambda: How it
      #   Works][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html
      # @option params [required, String] :handler
      #   The function within your code that Lambda calls to begin execution.
      #   For Node.js, it is the *module-name*.*export* value in your function.
      #   For Java, it can be `package.class-name::handler` or
      #   `package.class-name`. For more information, see [Lambda Function
      #   Handler (Java)][1].
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html
      # @option params [required, Types::FunctionCode] :code
      #   The code for the Lambda function.
      # @option params [String] :description
      #   A short, user-defined function description. Lambda does not use this
      #   value. Assign a meaningful description as you see fit.
      # @option params [Integer] :timeout
      #   The function execution time at which Lambda should terminate the
      #   function. Because the execution time has cost implications, we
      #   recommend you set this value based on your expected execution time.
      #   The default is 3 seconds.
      # @option params [Integer] :memory_size
      #   The amount of memory, in MB, your Lambda function is given. Lambda
      #   uses this memory size to infer the amount of CPU and memory allocated
      #   to your function. Your function use-case determines your CPU and
      #   memory requirements. For example, a database operation might need less
      #   memory compared to an image processing function. The default value is
      #   128 MB. The value must be a multiple of 64 MB.
      # @option params [Boolean] :publish
      #   This boolean parameter can be used to request AWS Lambda to create the
      #   Lambda function and publish a version as an atomic operation.
      # @option params [Types::VpcConfig] :vpc_config
      #   If your Lambda function accesses resources in a VPC, you provide this
      #   parameter identifying the list of security group IDs and subnet IDs.
      #   These must belong to the same VPC. You must provide at least one
      #   security group and one subnet ID.
      # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FunctionConfiguration#function_name #FunctionName} => String
      #   * {Types::FunctionConfiguration#function_arn #FunctionArn} => String
      #   * {Types::FunctionConfiguration#runtime #Runtime} => String
      #   * {Types::FunctionConfiguration#role #Role} => String
      #   * {Types::FunctionConfiguration#handler #Handler} => String
      #   * {Types::FunctionConfiguration#code_size #CodeSize} => Integer
      #   * {Types::FunctionConfiguration#description #Description} => String
      #   * {Types::FunctionConfiguration#timeout #Timeout} => Integer
      #   * {Types::FunctionConfiguration#memory_size #MemorySize} => Integer
      #   * {Types::FunctionConfiguration#last_modified #LastModified} => Time
      #   * {Types::FunctionConfiguration#code_sha_256 #CodeSha256} => String
      #   * {Types::FunctionConfiguration#version #Version} => String
      #   * {Types::FunctionConfiguration#vpc_config #VpcConfig} => Types::VpcConfigResponse
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_function({
      #     function_name: "FunctionName", # required
      #     runtime: "nodejs", # required, accepts nodejs, nodejs4.3, java8, python2.7
      #     role: "RoleArn", # required
      #     handler: "Handler", # required
      #     code: { # required
      #       zip_file: "data",
      #       s3_bucket: "S3Bucket",
      #       s3_key: "S3Key",
      #       s3_object_version: "S3ObjectVersion",
      #     },
      #     description: "Description",
      #     timeout: 1,
      #     memory_size: 1,
      #     publish: false,
      #     vpc_config: {
      #       subnet_ids: ["SubnetId"],
      #       security_group_ids: ["SecurityGroupId"],
      #     },
      #   })
      #
      # @example Response structure
      #   resp.function_name #=> String
      #   resp.function_arn #=> String
      #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.role #=> String
      #   resp.handler #=> String
      #   resp.code_size #=> Integer
      #   resp.description #=> String
      #   resp.timeout #=> Integer
      #   resp.memory_size #=> Integer
      #   resp.last_modified #=> Time
      #   resp.code_sha_256 #=> String
      #   resp.version #=> String
      #   resp.vpc_config.subnet_ids #=> Array
      #   resp.vpc_config.subnet_ids[0] #=> String
      #   resp.vpc_config.security_group_ids #=> Array
      #   resp.vpc_config.security_group_ids[0] #=> String
      #   resp.vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def create_function(params = {}, options = {})
        req = build_request(:create_function, params)
        req.send_request(options)
      end

      # Deletes the specified Lambda function alias. For more information, see
      # [Introduction to AWS Lambda Aliases][1].
      #
      # This requires permission for the lambda:DeleteAlias action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
      # @option params [required, String] :function_name
      #   The Lambda function name for which the alias is created. Deleting an
      #   alias does not delete the function version to which it is pointing.
      # @option params [required, String] :name
      #   Name of the alias to delete.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_alias({
      #     function_name: "FunctionName", # required
      #     name: "Alias", # required
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_alias(params = {}, options = {})
        req = build_request(:delete_alias, params)
        req.send_request(options)
      end

      # Removes an event source mapping. This means AWS Lambda will no longer
      # invoke the function for events in the associated source.
      #
      # This operation requires permission for the
      # `lambda:DeleteEventSourceMapping` action.
      # @option params [required, String] :uuid
      #   The event source mapping ID.
      # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventSourceMappingConfiguration#uuid #UUID} => String
      #   * {Types::EventSourceMappingConfiguration#batch_size #BatchSize} => Integer
      #   * {Types::EventSourceMappingConfiguration#event_source_arn #EventSourceArn} => String
      #   * {Types::EventSourceMappingConfiguration#function_arn #FunctionArn} => String
      #   * {Types::EventSourceMappingConfiguration#last_modified #LastModified} => Time
      #   * {Types::EventSourceMappingConfiguration#last_processing_result #LastProcessingResult} => String
      #   * {Types::EventSourceMappingConfiguration#state #State} => String
      #   * {Types::EventSourceMappingConfiguration#state_transition_reason #StateTransitionReason} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_event_source_mapping({
      #     uuid: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.uuid #=> String
      #   resp.batch_size #=> Integer
      #   resp.event_source_arn #=> String
      #   resp.function_arn #=> String
      #   resp.last_modified #=> Time
      #   resp.last_processing_result #=> String
      #   resp.state #=> String
      #   resp.state_transition_reason #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_event_source_mapping(params = {}, options = {})
        req = build_request(:delete_event_source_mapping, params)
        req.send_request(options)
      end

      # Deletes the specified Lambda function code and configuration.
      #
      # If you are using the versioning feature and you don\'t specify a
      # function version in your `DeleteFunction` request, AWS Lambda will
      # delete the function, including all its versions, and any aliases
      # pointing to the function versions. To delete a specific function
      # version, you must provide the function version via the `Qualifier`
      # parameter. For information about function versioning, see [AWS Lambda
      # Function Versioning and Aliases][1].
      #
      # When you delete a function the associated resource policy is also
      # deleted. You will need to delete the event source mappings explicitly.
      #
      # This operation requires permission for the `lambda:DeleteFunction`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The Lambda function to delete.
      #
      #   You can specify the function name (for example, `Thumbnail`) or you
      #   can specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
      #   using versioning, you can also provide a qualified function ARN (ARN
      #   that is qualified with function version or alias name as suffix). AWS
      #   Lambda also allows you to specify only the function name with the
      #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
      #   the length constraint applies only to the ARN. If you specify only the
      #   function name, it is limited to 64 character in length.
      # @option params [String] :qualifier
      #   Using this optional parameter you can specify a function version (but
      #   not the `$LATEST` version) to direct AWS Lambda to delete a specific
      #   function version. If the function version has one or more aliases
      #   pointing to it, you will get an error because you cannot have aliases
      #   pointing to it. You can delete any function version but not the
      #   `$LATEST`, that is, you cannot specify `$LATEST` as the value of this
      #   parameter. The `$LATEST` version can be deleted only when you want to
      #   delete all the function versions and aliases.
      #
      #   You can only specify a function version, not an alias name, using this
      #   parameter. You cannot delete a function version using its alias.
      #
      #   If you don\'t specify this parameter, AWS Lambda will delete the
      #   function, including all of its versions and aliases.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_function({
      #     function_name: "FunctionName", # required
      #     qualifier: "Qualifier",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def delete_function(params = {}, options = {})
        req = build_request(:delete_function, params)
        req.send_request(options)
      end

      # Returns the specified alias information such as the alias ARN,
      # description, and function version it is pointing to. For more
      # information, see [Introduction to AWS Lambda Aliases][1].
      #
      # This requires permission for the `lambda:GetAlias` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
      # @option params [required, String] :function_name
      #   Function name for which the alias is created. An alias is a
      #   subresource that exists only in the context of an existing Lambda
      #   function so you must specify the function name.
      # @option params [required, String] :name
      #   Name of the alias for which you want to retrieve information.
      # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AliasConfiguration#alias_arn #AliasArn} => String
      #   * {Types::AliasConfiguration#name #Name} => String
      #   * {Types::AliasConfiguration#function_version #FunctionVersion} => String
      #   * {Types::AliasConfiguration#description #Description} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_alias({
      #     function_name: "FunctionName", # required
      #     name: "Alias", # required
      #   })
      #
      # @example Response structure
      #   resp.alias_arn #=> String
      #   resp.name #=> String
      #   resp.function_version #=> String
      #   resp.description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_alias(params = {}, options = {})
        req = build_request(:get_alias, params)
        req.send_request(options)
      end

      # Returns configuration information for the specified event source
      # mapping (see CreateEventSourceMapping).
      #
      # This operation requires permission for the
      # `lambda:GetEventSourceMapping` action.
      # @option params [required, String] :uuid
      #   The AWS Lambda assigned ID of the event source mapping.
      # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventSourceMappingConfiguration#uuid #UUID} => String
      #   * {Types::EventSourceMappingConfiguration#batch_size #BatchSize} => Integer
      #   * {Types::EventSourceMappingConfiguration#event_source_arn #EventSourceArn} => String
      #   * {Types::EventSourceMappingConfiguration#function_arn #FunctionArn} => String
      #   * {Types::EventSourceMappingConfiguration#last_modified #LastModified} => Time
      #   * {Types::EventSourceMappingConfiguration#last_processing_result #LastProcessingResult} => String
      #   * {Types::EventSourceMappingConfiguration#state #State} => String
      #   * {Types::EventSourceMappingConfiguration#state_transition_reason #StateTransitionReason} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_event_source_mapping({
      #     uuid: "String", # required
      #   })
      #
      # @example Response structure
      #   resp.uuid #=> String
      #   resp.batch_size #=> Integer
      #   resp.event_source_arn #=> String
      #   resp.function_arn #=> String
      #   resp.last_modified #=> Time
      #   resp.last_processing_result #=> String
      #   resp.state #=> String
      #   resp.state_transition_reason #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_event_source_mapping(params = {}, options = {})
        req = build_request(:get_event_source_mapping, params)
        req.send_request(options)
      end

      # Returns the configuration information of the Lambda function and a
      # presigned URL link to the .zip file you uploaded with CreateFunction
      # so you can download the .zip file. Note that the URL is valid for up
      # to 10 minutes. The configuration information is the same information
      # you provided as parameters when uploading the function.
      #
      # Using the optional `Qualifier` parameter, you can specify a specific
      # function version for which you want this information. If you don\'t
      # specify this parameter, the API uses unqualified function ARN which
      # return information about the `$LATEST` version of the Lambda function.
      # For more information, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # This operation requires permission for the `lambda:GetFunction`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The Lambda function name.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :qualifier
      #   Using this optional parameter to specify a function version or an
      #   alias name. If you specify function version, the API uses qualified
      #   function ARN for the request and returns information about the
      #   specific Lambda function version. If you specify an alias name, the
      #   API uses the alias ARN and returns information about the function
      #   version to which the alias points. If you don\'t provide this
      #   parameter, the API uses unqualified function ARN and returns
      #   information about the `$LATEST` version of the Lambda function.
      # @return [Types::GetFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetFunctionResponse#configuration #Configuration} => Types::FunctionConfiguration
      #   * {Types::GetFunctionResponse#code #Code} => Types::FunctionCodeLocation
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_function({
      #     function_name: "FunctionName", # required
      #     qualifier: "Qualifier",
      #   })
      #
      # @example Response structure
      #   resp.configuration.function_name #=> String
      #   resp.configuration.function_arn #=> String
      #   resp.configuration.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.configuration.role #=> String
      #   resp.configuration.handler #=> String
      #   resp.configuration.code_size #=> Integer
      #   resp.configuration.description #=> String
      #   resp.configuration.timeout #=> Integer
      #   resp.configuration.memory_size #=> Integer
      #   resp.configuration.last_modified #=> Time
      #   resp.configuration.code_sha_256 #=> String
      #   resp.configuration.version #=> String
      #   resp.configuration.vpc_config.subnet_ids #=> Array
      #   resp.configuration.vpc_config.subnet_ids[0] #=> String
      #   resp.configuration.vpc_config.security_group_ids #=> Array
      #   resp.configuration.vpc_config.security_group_ids[0] #=> String
      #   resp.configuration.vpc_config.vpc_id #=> String
      #   resp.code.repository_type #=> String
      #   resp.code.location #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_function(params = {}, options = {})
        req = build_request(:get_function, params)
        req.send_request(options)
      end

      # Returns the configuration information of the Lambda function. This the
      # same information you provided as parameters when uploading the
      # function by using CreateFunction.
      #
      # If you are using the versioning feature, you can retrieve this
      # information for a specific function version by using the optional
      # `Qualifier` parameter and specifying the function version or alias
      # that points to it. If you don\'t provide it, the API returns
      # information about the $LATEST version of the function. For more
      # information about versioning, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # This operation requires permission for the
      # `lambda:GetFunctionConfiguration` operation.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The name of the Lambda function for which you want to retrieve the
      #   configuration information.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :qualifier
      #   Using this optional parameter you can specify a function version or an
      #   alias name. If you specify function version, the API uses qualified
      #   function ARN and returns information about the specific function
      #   version. If you specify an alias name, the API uses the alias ARN and
      #   returns information about the function version to which the alias
      #   points.
      #
      #   If you don\'t specify this parameter, the API uses unqualified
      #   function ARN, and returns information about the `$LATEST` function
      #   version.
      # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FunctionConfiguration#function_name #FunctionName} => String
      #   * {Types::FunctionConfiguration#function_arn #FunctionArn} => String
      #   * {Types::FunctionConfiguration#runtime #Runtime} => String
      #   * {Types::FunctionConfiguration#role #Role} => String
      #   * {Types::FunctionConfiguration#handler #Handler} => String
      #   * {Types::FunctionConfiguration#code_size #CodeSize} => Integer
      #   * {Types::FunctionConfiguration#description #Description} => String
      #   * {Types::FunctionConfiguration#timeout #Timeout} => Integer
      #   * {Types::FunctionConfiguration#memory_size #MemorySize} => Integer
      #   * {Types::FunctionConfiguration#last_modified #LastModified} => Time
      #   * {Types::FunctionConfiguration#code_sha_256 #CodeSha256} => String
      #   * {Types::FunctionConfiguration#version #Version} => String
      #   * {Types::FunctionConfiguration#vpc_config #VpcConfig} => Types::VpcConfigResponse
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_function_configuration({
      #     function_name: "FunctionName", # required
      #     qualifier: "Qualifier",
      #   })
      #
      # @example Response structure
      #   resp.function_name #=> String
      #   resp.function_arn #=> String
      #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.role #=> String
      #   resp.handler #=> String
      #   resp.code_size #=> Integer
      #   resp.description #=> String
      #   resp.timeout #=> Integer
      #   resp.memory_size #=> Integer
      #   resp.last_modified #=> Time
      #   resp.code_sha_256 #=> String
      #   resp.version #=> String
      #   resp.vpc_config.subnet_ids #=> Array
      #   resp.vpc_config.subnet_ids[0] #=> String
      #   resp.vpc_config.security_group_ids #=> Array
      #   resp.vpc_config.security_group_ids[0] #=> String
      #   resp.vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_function_configuration(params = {}, options = {})
        req = build_request(:get_function_configuration, params)
        req.send_request(options)
      end

      # Returns the resource policy associated with the specified Lambda
      # function.
      #
      # If you are using the versioning feature, you can get the resource
      # policy associated with the specific Lambda function version or alias
      # by specifying the version or alias name using the `Qualifier`
      # parameter. For more information about versioning, see [AWS Lambda
      # Function Versioning and Aliases][1].
      #
      # For information about adding permissions, see AddPermission.
      #
      # You need permission for the `lambda:GetPolicy action.`
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   Function name whose resource policy you want to retrieve.
      #
      #   You can specify the function name (for example, `Thumbnail`) or you
      #   can specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
      #   using versioning, you can also provide a qualified function ARN (ARN
      #   that is qualified with function version or alias name as suffix). AWS
      #   Lambda also allows you to specify only the function name with the
      #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
      #   the length constraint applies only to the ARN. If you specify only the
      #   function name, it is limited to 64 character in length.
      # @option params [String] :qualifier
      #   You can specify this optional query parameter to specify a function
      #   version or an alias name in which case this API will return all
      #   permissions associated with the specific qualified ARN. If you don\'t
      #   provide this parameter, the API will return permissions that apply to
      #   the unqualified function ARN.
      # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetPolicyResponse#policy #Policy} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_policy({
      #     function_name: "FunctionName", # required
      #     qualifier: "Qualifier",
      #   })
      #
      # @example Response structure
      #   resp.policy #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def get_policy(params = {}, options = {})
        req = build_request(:get_policy, params)
        req.send_request(options)
      end

      # Invokes a specific Lambda function.
      #
      # If you are using the versioning feature, you can invoke the specific
      # function version by providing function version or alias name that is
      # pointing to the function version using the `Qualifier` parameter in
      # the request. If you don\'t provide the `Qualifier` parameter, the
      # `$LATEST` version of the Lambda function is invoked. Invocations occur
      # at least once in response to an event and functions must be idempotent
      # to handle this. For information about the versioning feature, see [AWS
      # Lambda Function Versioning and Aliases][1].
      #
      # This operation requires permission for the `lambda:InvokeFunction`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The Lambda function name.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :invocation_type
      #   By default, the `Invoke` API assumes `RequestResponse` invocation
      #   type. You can optionally request asynchronous execution by specifying
      #   `Event` as the `InvocationType`. You can also use this parameter to
      #   request AWS Lambda to not execute the function but do some
      #   verification, such as if the caller is authorized to invoke the
      #   function and if the inputs are valid. You request this by specifying
      #   `DryRun` as the `InvocationType`. This is useful in a cross-account
      #   scenario when you want to verify access to a function without running
      #   it.
      # @option params [String] :log_type
      #   You can set this optional parameter to `Tail` in the request only if
      #   you specify the `InvocationType` parameter with value
      #   `RequestResponse`. In this case, AWS Lambda returns the base64-encoded
      #   last 4 KB of log data produced by your Lambda function in the
      #   `x-amz-log-result` header.
      # @option params [String] :client_context
      #   Using the `ClientContext` you can pass client-specific information to
      #   the Lambda function you are invoking. You can then process the client
      #   information in your Lambda function as you choose through the context
      #   variable. For an example of a `ClientContext` JSON, see [PutEvents][1]
      #   in the *Amazon Mobile Analytics API Reference and User Guide*.
      #
      #   The ClientContext JSON must be base64-encoded.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/mobileanalytics/latest/ug/PutEvents.html
      # @option params [String, IO] :payload
      #   JSON that you want to provide to your Lambda function as input.
      # @option params [String] :qualifier
      #   You can use this optional parameter to specify a Lambda function
      #   version or alias name. If you specify a function version, the API uses
      #   the qualified function ARN to invoke a specific Lambda function. If
      #   you specify an alias name, the API uses the alias ARN to invoke the
      #   Lambda function version to which the alias points.
      #
      #   If you don\'t provide this parameter, then the API uses unqualified
      #   function ARN which results in invocation of the `$LATEST` version.
      # @return [Types::InvocationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::InvocationResponse#status_code #StatusCode} => Integer
      #   * {Types::InvocationResponse#function_error #FunctionError} => String
      #   * {Types::InvocationResponse#log_result #LogResult} => String
      #   * {Types::InvocationResponse#payload #Payload} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.invoke({
      #     function_name: "FunctionName", # required
      #     invocation_type: "Event", # accepts Event, RequestResponse, DryRun
      #     log_type: "None", # accepts None, Tail
      #     client_context: "String",
      #     payload: "data",
      #     qualifier: "Qualifier",
      #   })
      #
      # @example Response structure
      #   resp.status_code #=> Integer
      #   resp.function_error #=> String
      #   resp.log_result #=> String
      #   resp.payload #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def invoke(params = {}, options = {})
        req = build_request(:invoke, params)
        req.send_request(options)
      end

      # <important markdown="1">This API is deprecated. We recommend you use `Invoke` API (see
      # Invoke).
      #
      #  </important>
      #
      # Submits an invocation request to AWS Lambda. Upon receiving the
      # request, Lambda executes the specified function asynchronously. To see
      # the logs generated by the Lambda function execution, see the
      # CloudWatch Logs console.
      #
      # This operation requires permission for the `lambda:InvokeFunction`
      # action.
      # @option params [required, String] :function_name
      #   The Lambda function name.
      # @option params [required, String, IO] :invoke_args
      #   JSON that you want to provide to your Lambda function as input.
      # @return [Types::InvokeAsyncResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::InvokeAsyncResponse#status #Status} => Integer
      #
      # @example Request syntax with placeholder values
      #   resp = client.invoke_async({
      #     function_name: "FunctionName", # required
      #     invoke_args: "data", # required
      #   })
      #
      # @example Response structure
      #   resp.status #=> Integer
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def invoke_async(params = {}, options = {})
        req = build_request(:invoke_async, params)
        req.send_request(options)
      end

      # Returns list of aliases created for a Lambda function. For each alias,
      # the response includes information such as the alias ARN, description,
      # alias name, and the function version to which it points. For more
      # information, see [Introduction to AWS Lambda Aliases][1].
      #
      # This requires permission for the lambda:ListAliases action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
      # @option params [required, String] :function_name
      #   Lambda function name for which the alias is created.
      # @option params [String] :function_version
      #   If you specify this optional parameter, the API returns only the
      #   aliases that are pointing to the specific Lambda function version,
      #   otherwise the API returns all of the aliases created for the Lambda
      #   function.
      # @option params [String] :marker
      #   Optional string. An opaque pagination token returned from a previous
      #   `ListAliases` operation. If present, indicates where to continue the
      #   listing.
      # @option params [Integer] :max_items
      #   Optional integer. Specifies the maximum number of aliases to return in
      #   response. This parameter value must be greater than 0.
      # @return [Types::ListAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListAliasesResponse#next_marker #NextMarker} => String
      #   * {Types::ListAliasesResponse#aliases #Aliases} => Array&lt;Types::AliasConfiguration&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_aliases({
      #     function_name: "FunctionName", # required
      #     function_version: "Version",
      #     marker: "String",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.next_marker #=> String
      #   resp.aliases #=> Array
      #   resp.aliases[0].alias_arn #=> String
      #   resp.aliases[0].name #=> String
      #   resp.aliases[0].function_version #=> String
      #   resp.aliases[0].description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_aliases(params = {}, options = {})
        req = build_request(:list_aliases, params)
        req.send_request(options)
      end

      # Returns a list of event source mappings you created using the
      # `CreateEventSourceMapping` (see CreateEventSourceMapping).
      #
      # For each mapping, the API returns configuration information. You can
      # optionally specify filters to retrieve specific event source mappings.
      #
      # If you are using the versioning feature, you can get list of event
      # source mappings for a specific Lambda function version or an alias as
      # described in the `FunctionName` parameter. For information about the
      # versioning feature, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # This operation requires permission for the
      # `lambda:ListEventSourceMappings` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [String] :event_source_arn
      #   The Amazon Resource Name (ARN) of the Amazon Kinesis stream. (This
      #   parameter is optional.)
      # @option params [String] :function_name
      #   The name of the Lambda function.
      #
      #   You can specify the function name (for example, `Thumbnail`) or you
      #   can specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). If you are
      #   using versioning, you can also provide a qualified function ARN (ARN
      #   that is qualified with function version or alias name as suffix). AWS
      #   Lambda also allows you to specify only the function name with the
      #   account ID qualifier (for example, `account-id:Thumbnail`). Note that
      #   the length constraint applies only to the ARN. If you specify only the
      #   function name, it is limited to 64 character in length.
      # @option params [String] :marker
      #   Optional string. An opaque pagination token returned from a previous
      #   `ListEventSourceMappings` operation. If present, specifies to continue
      #   the list from where the returning call left off.
      # @option params [Integer] :max_items
      #   Optional integer. Specifies the maximum number of event sources to
      #   return in response. This value must be greater than 0.
      # @return [Types::ListEventSourceMappingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListEventSourceMappingsResponse#next_marker #NextMarker} => String
      #   * {Types::ListEventSourceMappingsResponse#event_source_mappings #EventSourceMappings} => Array&lt;Types::EventSourceMappingConfiguration&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_event_source_mappings({
      #     event_source_arn: "Arn",
      #     function_name: "FunctionName",
      #     marker: "String",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.next_marker #=> String
      #   resp.event_source_mappings #=> Array
      #   resp.event_source_mappings[0].uuid #=> String
      #   resp.event_source_mappings[0].batch_size #=> Integer
      #   resp.event_source_mappings[0].event_source_arn #=> String
      #   resp.event_source_mappings[0].function_arn #=> String
      #   resp.event_source_mappings[0].last_modified #=> Time
      #   resp.event_source_mappings[0].last_processing_result #=> String
      #   resp.event_source_mappings[0].state #=> String
      #   resp.event_source_mappings[0].state_transition_reason #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_event_source_mappings(params = {}, options = {})
        req = build_request(:list_event_source_mappings, params)
        req.send_request(options)
      end

      # Returns a list of your Lambda functions. For each function, the
      # response includes the function configuration information. You must use
      # GetFunction to retrieve the code for your function.
      #
      # This operation requires permission for the `lambda:ListFunctions`
      # action.
      #
      # If you are using versioning feature, the response returns list of
      # $LATEST versions of your functions. For information about the
      # versioning feature, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [String] :marker
      #   Optional string. An opaque pagination token returned from a previous
      #   `ListFunctions` operation. If present, indicates where to continue the
      #   listing.
      # @option params [Integer] :max_items
      #   Optional integer. Specifies the maximum number of AWS Lambda functions
      #   to return in response. This parameter value must be greater than 0.
      # @return [Types::ListFunctionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListFunctionsResponse#next_marker #NextMarker} => String
      #   * {Types::ListFunctionsResponse#functions #Functions} => Array&lt;Types::FunctionConfiguration&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_functions({
      #     marker: "String",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.next_marker #=> String
      #   resp.functions #=> Array
      #   resp.functions[0].function_name #=> String
      #   resp.functions[0].function_arn #=> String
      #   resp.functions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.functions[0].role #=> String
      #   resp.functions[0].handler #=> String
      #   resp.functions[0].code_size #=> Integer
      #   resp.functions[0].description #=> String
      #   resp.functions[0].timeout #=> Integer
      #   resp.functions[0].memory_size #=> Integer
      #   resp.functions[0].last_modified #=> Time
      #   resp.functions[0].code_sha_256 #=> String
      #   resp.functions[0].version #=> String
      #   resp.functions[0].vpc_config.subnet_ids #=> Array
      #   resp.functions[0].vpc_config.subnet_ids[0] #=> String
      #   resp.functions[0].vpc_config.security_group_ids #=> Array
      #   resp.functions[0].vpc_config.security_group_ids[0] #=> String
      #   resp.functions[0].vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_functions(params = {}, options = {})
        req = build_request(:list_functions, params)
        req.send_request(options)
      end

      # List all versions of a function. For information about the versioning
      # feature, see [AWS Lambda Function Versioning and Aliases][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   Function name whose versions to list. You can specify a function name
      #   (for example, `Thumbnail`) or you can specify Amazon Resource Name
      #   (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :marker
      #   Optional string. An opaque pagination token returned from a previous
      #   `ListVersionsByFunction` operation. If present, indicates where to
      #   continue the listing.
      # @option params [Integer] :max_items
      #   Optional integer. Specifies the maximum number of AWS Lambda function
      #   versions to return in response. This parameter value must be greater
      #   than 0.
      # @return [Types::ListVersionsByFunctionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListVersionsByFunctionResponse#next_marker #NextMarker} => String
      #   * {Types::ListVersionsByFunctionResponse#versions #Versions} => Array&lt;Types::FunctionConfiguration&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_versions_by_function({
      #     function_name: "FunctionName", # required
      #     marker: "String",
      #     max_items: 1,
      #   })
      #
      # @example Response structure
      #   resp.next_marker #=> String
      #   resp.versions #=> Array
      #   resp.versions[0].function_name #=> String
      #   resp.versions[0].function_arn #=> String
      #   resp.versions[0].runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.versions[0].role #=> String
      #   resp.versions[0].handler #=> String
      #   resp.versions[0].code_size #=> Integer
      #   resp.versions[0].description #=> String
      #   resp.versions[0].timeout #=> Integer
      #   resp.versions[0].memory_size #=> Integer
      #   resp.versions[0].last_modified #=> Time
      #   resp.versions[0].code_sha_256 #=> String
      #   resp.versions[0].version #=> String
      #   resp.versions[0].vpc_config.subnet_ids #=> Array
      #   resp.versions[0].vpc_config.subnet_ids[0] #=> String
      #   resp.versions[0].vpc_config.security_group_ids #=> Array
      #   resp.versions[0].vpc_config.security_group_ids[0] #=> String
      #   resp.versions[0].vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def list_versions_by_function(params = {}, options = {})
        req = build_request(:list_versions_by_function, params)
        req.send_request(options)
      end

      # Publishes a version of your function from the current snapshot of
      # $LATEST. That is, AWS Lambda takes a snapshot of the function code and
      # configuration information from $LATEST and publishes a new version.
      # The code and configuration cannot be modified after publication. For
      # information about the versioning feature, see [AWS Lambda Function
      # Versioning and Aliases][1].
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The Lambda function name. You can specify a function name (for
      #   example, `Thumbnail`) or you can specify Amazon Resource Name (ARN) of
      #   the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :code_sha_256
      #   The SHA256 hash of the deployment package you want to publish. This
      #   provides validation on the code you are publishing. If you provide
      #   this parameter value must match the SHA256 of the $LATEST version for
      #   the publication to succeed.
      # @option params [String] :description
      #   The description for the version you are publishing. If not provided,
      #   AWS Lambda copies the description from the $LATEST version.
      # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FunctionConfiguration#function_name #FunctionName} => String
      #   * {Types::FunctionConfiguration#function_arn #FunctionArn} => String
      #   * {Types::FunctionConfiguration#runtime #Runtime} => String
      #   * {Types::FunctionConfiguration#role #Role} => String
      #   * {Types::FunctionConfiguration#handler #Handler} => String
      #   * {Types::FunctionConfiguration#code_size #CodeSize} => Integer
      #   * {Types::FunctionConfiguration#description #Description} => String
      #   * {Types::FunctionConfiguration#timeout #Timeout} => Integer
      #   * {Types::FunctionConfiguration#memory_size #MemorySize} => Integer
      #   * {Types::FunctionConfiguration#last_modified #LastModified} => Time
      #   * {Types::FunctionConfiguration#code_sha_256 #CodeSha256} => String
      #   * {Types::FunctionConfiguration#version #Version} => String
      #   * {Types::FunctionConfiguration#vpc_config #VpcConfig} => Types::VpcConfigResponse
      #
      # @example Request syntax with placeholder values
      #   resp = client.publish_version({
      #     function_name: "FunctionName", # required
      #     code_sha_256: "String",
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.function_name #=> String
      #   resp.function_arn #=> String
      #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.role #=> String
      #   resp.handler #=> String
      #   resp.code_size #=> Integer
      #   resp.description #=> String
      #   resp.timeout #=> Integer
      #   resp.memory_size #=> Integer
      #   resp.last_modified #=> Time
      #   resp.code_sha_256 #=> String
      #   resp.version #=> String
      #   resp.vpc_config.subnet_ids #=> Array
      #   resp.vpc_config.subnet_ids[0] #=> String
      #   resp.vpc_config.security_group_ids #=> Array
      #   resp.vpc_config.security_group_ids[0] #=> String
      #   resp.vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def publish_version(params = {}, options = {})
        req = build_request(:publish_version, params)
        req.send_request(options)
      end

      # You can remove individual permissions from an resource policy
      # associated with a Lambda function by providing a statement ID that you
      # provided when you added the permission.
      #
      # If you are using versioning, the permissions you remove are specific
      # to the Lambda function version or alias you specify in the
      # `AddPermission` request via the `Qualifier` parameter. For more
      # information about versioning, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # Note that removal of a permission will cause an active event source to
      # lose permission to the function.
      #
      # You need permission for the `lambda:RemovePermission` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   Lambda function whose resource policy you want to remove a permission
      #   from.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [required, String] :statement_id
      #   Statement ID of the permission to remove.
      # @option params [String] :qualifier
      #   You can specify this optional parameter to remove permission
      #   associated with a specific function version or function alias. If you
      #   don\'t specify this parameter, the API removes permission associated
      #   with the unqualified function ARN.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.remove_permission({
      #     function_name: "FunctionName", # required
      #     statement_id: "StatementId", # required
      #     qualifier: "Qualifier",
      #   })
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def remove_permission(params = {}, options = {})
        req = build_request(:remove_permission, params)
        req.send_request(options)
      end

      # Using this API you can update the function version to which the alias
      # points and the alias description. For more information, see
      # [Introduction to AWS Lambda Aliases][1].
      #
      # This requires permission for the lambda:UpdateAlias action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html
      # @option params [required, String] :function_name
      #   The function name for which the alias is created.
      # @option params [required, String] :name
      #   The alias name.
      # @option params [String] :function_version
      #   Using this parameter you can change the Lambda function version to
      #   which the alias points.
      # @option params [String] :description
      #   You can change the description of the alias using this parameter.
      # @return [Types::AliasConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::AliasConfiguration#alias_arn #AliasArn} => String
      #   * {Types::AliasConfiguration#name #Name} => String
      #   * {Types::AliasConfiguration#function_version #FunctionVersion} => String
      #   * {Types::AliasConfiguration#description #Description} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_alias({
      #     function_name: "FunctionName", # required
      #     name: "Alias", # required
      #     function_version: "Version",
      #     description: "Description",
      #   })
      #
      # @example Response structure
      #   resp.alias_arn #=> String
      #   resp.name #=> String
      #   resp.function_version #=> String
      #   resp.description #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_alias(params = {}, options = {})
        req = build_request(:update_alias, params)
        req.send_request(options)
      end

      # You can update an event source mapping. This is useful if you want to
      # change the parameters of the existing mapping without losing your
      # position in the stream. You can change which function will receive the
      # stream records, but to change the stream itself, you must create a new
      # mapping.
      #
      # If you are using the versioning feature, you can update the event
      # source mapping to map to a specific Lambda function version or alias
      # as described in the `FunctionName` parameter. For information about
      # the versioning feature, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # If you disable the event source mapping, AWS Lambda stops polling. If
      # you enable again, it will resume polling from the time it had stopped
      # polling, so you don\'t lose processing of any records. However, if you
      # delete event source mapping and create it again, it will reset.
      #
      # This operation requires permission for the
      # `lambda:UpdateEventSourceMapping` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :uuid
      #   The event source mapping identifier.
      # @option params [String] :function_name
      #   The Lambda function to which you want the stream records sent.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`).
      #
      #   If you are using versioning, you can also provide a qualified function
      #   ARN (ARN that is qualified with function version or alias name as
      #   suffix). For more information about versioning, see [AWS Lambda
      #   Function Versioning and Aliases][1]
      #
      #   Note that the length constraint applies only to the ARN. If you
      #   specify only the function name, it is limited to 64 character in
      #   length.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [Boolean] :enabled
      #   Specifies whether AWS Lambda should actively poll the stream or not.
      #   If disabled, AWS Lambda will not poll the stream.
      # @option params [Integer] :batch_size
      #   The maximum number of stream records that can be sent to your Lambda
      #   function for a single invocation.
      # @return [Types::EventSourceMappingConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::EventSourceMappingConfiguration#uuid #UUID} => String
      #   * {Types::EventSourceMappingConfiguration#batch_size #BatchSize} => Integer
      #   * {Types::EventSourceMappingConfiguration#event_source_arn #EventSourceArn} => String
      #   * {Types::EventSourceMappingConfiguration#function_arn #FunctionArn} => String
      #   * {Types::EventSourceMappingConfiguration#last_modified #LastModified} => Time
      #   * {Types::EventSourceMappingConfiguration#last_processing_result #LastProcessingResult} => String
      #   * {Types::EventSourceMappingConfiguration#state #State} => String
      #   * {Types::EventSourceMappingConfiguration#state_transition_reason #StateTransitionReason} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_event_source_mapping({
      #     uuid: "String", # required
      #     function_name: "FunctionName",
      #     enabled: false,
      #     batch_size: 1,
      #   })
      #
      # @example Response structure
      #   resp.uuid #=> String
      #   resp.batch_size #=> Integer
      #   resp.event_source_arn #=> String
      #   resp.function_arn #=> String
      #   resp.last_modified #=> Time
      #   resp.last_processing_result #=> String
      #   resp.state #=> String
      #   resp.state_transition_reason #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_event_source_mapping(params = {}, options = {})
        req = build_request(:update_event_source_mapping, params)
        req.send_request(options)
      end

      # Updates the code for the specified Lambda function. This operation
      # must only be used on an existing Lambda function and cannot be used to
      # update the function configuration.
      #
      # If you are using the versioning feature, note this API will always
      # update the $LATEST version of your Lambda function. For information
      # about the versioning feature, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # This operation requires permission for the `lambda:UpdateFunctionCode`
      # action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The existing Lambda function name whose code you want to replace.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String, IO] :zip_file
      #   The contents of your zip file containing your deployment package. If
      #   you are using the web API directly, the contents of the zip file must
      #   be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the
      #   SDKs or CLI will do the encoding for you. For more information about
      #   creating a .zip file, go to [Execution Permissions][1] in the *AWS
      #   Lambda Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html
      # @option params [String] :s3_bucket
      #   Amazon S3 bucket name where the .zip file containing your deployment
      #   package is stored. This bucket must reside in the same AWS region
      #   where you are creating the Lambda function.
      # @option params [String] :s3_key
      #   The Amazon S3 object (the deployment package) key name you want to
      #   upload.
      # @option params [String] :s3_object_version
      #   The Amazon S3 object (the deployment package) version you want to
      #   upload.
      # @option params [Boolean] :publish
      #   This boolean parameter can be used to request AWS Lambda to update the
      #   Lambda function and publish a version as an atomic operation.
      # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FunctionConfiguration#function_name #FunctionName} => String
      #   * {Types::FunctionConfiguration#function_arn #FunctionArn} => String
      #   * {Types::FunctionConfiguration#runtime #Runtime} => String
      #   * {Types::FunctionConfiguration#role #Role} => String
      #   * {Types::FunctionConfiguration#handler #Handler} => String
      #   * {Types::FunctionConfiguration#code_size #CodeSize} => Integer
      #   * {Types::FunctionConfiguration#description #Description} => String
      #   * {Types::FunctionConfiguration#timeout #Timeout} => Integer
      #   * {Types::FunctionConfiguration#memory_size #MemorySize} => Integer
      #   * {Types::FunctionConfiguration#last_modified #LastModified} => Time
      #   * {Types::FunctionConfiguration#code_sha_256 #CodeSha256} => String
      #   * {Types::FunctionConfiguration#version #Version} => String
      #   * {Types::FunctionConfiguration#vpc_config #VpcConfig} => Types::VpcConfigResponse
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_function_code({
      #     function_name: "FunctionName", # required
      #     zip_file: "data",
      #     s3_bucket: "S3Bucket",
      #     s3_key: "S3Key",
      #     s3_object_version: "S3ObjectVersion",
      #     publish: false,
      #   })
      #
      # @example Response structure
      #   resp.function_name #=> String
      #   resp.function_arn #=> String
      #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.role #=> String
      #   resp.handler #=> String
      #   resp.code_size #=> Integer
      #   resp.description #=> String
      #   resp.timeout #=> Integer
      #   resp.memory_size #=> Integer
      #   resp.last_modified #=> Time
      #   resp.code_sha_256 #=> String
      #   resp.version #=> String
      #   resp.vpc_config.subnet_ids #=> Array
      #   resp.vpc_config.subnet_ids[0] #=> String
      #   resp.vpc_config.security_group_ids #=> Array
      #   resp.vpc_config.security_group_ids[0] #=> String
      #   resp.vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_function_code(params = {}, options = {})
        req = build_request(:update_function_code, params)
        req.send_request(options)
      end

      # Updates the configuration parameters for the specified Lambda function
      # by using the values provided in the request. You provide only the
      # parameters you want to change. This operation must only be used on an
      # existing Lambda function and cannot be used to update the function\'s
      # code.
      #
      # If you are using the versioning feature, note this API will always
      # update the $LATEST version of your Lambda function. For information
      # about the versioning feature, see [AWS Lambda Function Versioning and
      # Aliases][1].
      #
      # This operation requires permission for the
      # `lambda:UpdateFunctionConfiguration` action.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html
      # @option params [required, String] :function_name
      #   The name of the Lambda function.
      #
      #   You can specify a function name (for example, `Thumbnail`) or you can
      #   specify Amazon Resource Name (ARN) of the function (for example,
      #   `arn:aws:lambda:us-west-2:account-id:function:ThumbNail`). AWS Lambda
      #   also allows you to specify a partial ARN (for example,
      #   `account-id:Thumbnail`). Note that the length constraint applies only
      #   to the ARN. If you specify only the function name, it is limited to 64
      #   character in length.
      # @option params [String] :role
      #   The Amazon Resource Name (ARN) of the IAM role that Lambda will assume
      #   when it executes your function.
      # @option params [String] :handler
      #   The function that Lambda calls to begin executing your function. For
      #   Node.js, it is the `module-name.export` value in your function.
      # @option params [String] :description
      #   A short user-defined function description. AWS Lambda does not use
      #   this value. Assign a meaningful description as you see fit.
      # @option params [Integer] :timeout
      #   The function execution time at which AWS Lambda should terminate the
      #   function. Because the execution time has cost implications, we
      #   recommend you set this value based on your expected execution time.
      #   The default is 3 seconds.
      # @option params [Integer] :memory_size
      #   The amount of memory, in MB, your Lambda function is given. AWS Lambda
      #   uses this memory size to infer the amount of CPU allocated to your
      #   function. Your function use-case determines your CPU and memory
      #   requirements. For example, a database operation might need less memory
      #   compared to an image processing function. The default value is 128 MB.
      #   The value must be a multiple of 64 MB.
      # @option params [Types::VpcConfig] :vpc_config
      #   If your Lambda function accesses resources in a VPC, you provide this
      #   parameter identifying the list of security group IDs and subnet IDs.
      #   These must belong to the same VPC. You must provide at least one
      #   security group and one subnet ID.
      # @option params [String] :runtime
      #   The runtime environment for the Lambda function.
      #
      #   To use the Node.js runtime v4.3, set the value to \"nodejs4.3\". To
      #   use earlier runtime (v0.10.42), set the value to \"nodejs\".
      # @return [Types::FunctionConfiguration] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::FunctionConfiguration#function_name #FunctionName} => String
      #   * {Types::FunctionConfiguration#function_arn #FunctionArn} => String
      #   * {Types::FunctionConfiguration#runtime #Runtime} => String
      #   * {Types::FunctionConfiguration#role #Role} => String
      #   * {Types::FunctionConfiguration#handler #Handler} => String
      #   * {Types::FunctionConfiguration#code_size #CodeSize} => Integer
      #   * {Types::FunctionConfiguration#description #Description} => String
      #   * {Types::FunctionConfiguration#timeout #Timeout} => Integer
      #   * {Types::FunctionConfiguration#memory_size #MemorySize} => Integer
      #   * {Types::FunctionConfiguration#last_modified #LastModified} => Time
      #   * {Types::FunctionConfiguration#code_sha_256 #CodeSha256} => String
      #   * {Types::FunctionConfiguration#version #Version} => String
      #   * {Types::FunctionConfiguration#vpc_config #VpcConfig} => Types::VpcConfigResponse
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_function_configuration({
      #     function_name: "FunctionName", # required
      #     role: "RoleArn",
      #     handler: "Handler",
      #     description: "Description",
      #     timeout: 1,
      #     memory_size: 1,
      #     vpc_config: {
      #       subnet_ids: ["SubnetId"],
      #       security_group_ids: ["SecurityGroupId"],
      #     },
      #     runtime: "nodejs", # accepts nodejs, nodejs4.3, java8, python2.7
      #   })
      #
      # @example Response structure
      #   resp.function_name #=> String
      #   resp.function_arn #=> String
      #   resp.runtime #=> String, one of "nodejs", "nodejs4.3", "java8", "python2.7"
      #   resp.role #=> String
      #   resp.handler #=> String
      #   resp.code_size #=> Integer
      #   resp.description #=> String
      #   resp.timeout #=> Integer
      #   resp.memory_size #=> Integer
      #   resp.last_modified #=> Time
      #   resp.code_sha_256 #=> String
      #   resp.version #=> String
      #   resp.vpc_config.subnet_ids #=> Array
      #   resp.vpc_config.subnet_ids[0] #=> String
      #   resp.vpc_config.security_group_ids #=> Array
      #   resp.vpc_config.security_group_ids[0] #=> String
      #   resp.vpc_config.vpc_id #=> String
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      def update_function_configuration(params = {}, options = {})
        req = build_request(:update_function_configuration, params)
        req.send_request(options)
      end

      # @!endgroup

      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {}
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end