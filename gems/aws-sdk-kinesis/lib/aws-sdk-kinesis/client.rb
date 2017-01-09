# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesis)

module Aws::Kinesis
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesis

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds or updates tags for the specified Amazon Kinesis stream. Each
    # stream can have up to 10 tags.
    #
    # If tags have already been assigned to the stream, `AddTagsToStream`
    # overwrites any existing tags that correspond to the specified tag
    # keys.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The set of key-value pairs to use to create the tags.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_stream({
    #     stream_name: "StreamName", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @overload add_tags_to_stream(params = {})
    # @param [Hash] params ({})
    def add_tags_to_stream(params = {}, options = {})
      req = build_request(:add_tags_to_stream, params)
      req.send_request(options)
    end

    # Creates an Amazon Kinesis stream. A stream captures and transports
    # data records that are continuously emitted from different data sources
    # or *producers*. Scale-out within a stream is explicitly supported by
    # means of shards, which are uniquely identified groups of data records
    # in a stream.
    #
    # You specify and control the number of shards that a stream is composed
    # of. Each shard can support reads up to 5 transactions per second, up
    # to a maximum data read total of 2 MB per second. Each shard can
    # support writes up to 1,000 records per second, up to a maximum data
    # write total of 1 MB per second. You can add shards to a stream if the
    # amount of data input increases and you can remove shards if the amount
    # of data input decreases.
    #
    # The stream name identifies the stream. The name is scoped to the AWS
    # account used by the application. It is also scoped by region. That is,
    # two streams in two different accounts can have the same name, and two
    # streams in the same account, but in two different regions, can have
    # the same name.
    #
    # `CreateStream` is an asynchronous operation. Upon receiving a
    # `CreateStream` request, Amazon Kinesis immediately returns and sets
    # the stream status to `CREATING`. After the stream is created, Amazon
    # Kinesis sets the stream status to `ACTIVE`. You should perform read
    # and write operations only on an `ACTIVE` stream.
    #
    # You receive a `LimitExceededException` when making a `CreateStream`
    # request if you try to do one of the following:
    #
    # * Have more than five streams in the `CREATING` state at any point in
    #   time.
    #
    # * Create more shards than are authorized for your account.
    #
    # For the default shard limit for an AWS account, see [Streams
    # Limits][1] in the *Amazon Kinesis Streams Developer Guide*. If you
    # need to increase this limit, [contact AWS Support][2].
    #
    # You can use `DescribeStream` to check the stream status, which is
    # returned in `StreamStatus`.
    #
    # CreateStream has a limit of 5 transactions per second per account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @option params [required, String] :stream_name
    #   A name to identify the stream. The stream name is scoped to the AWS
    #   account used by the application that creates the stream. It is also
    #   scoped by region. That is, two streams in two different AWS accounts
    #   can have the same name, and two streams in the same AWS account but in
    #   two different regions can have the same name.
    #
    # @option params [required, Integer] :shard_count
    #   The number of shards that the stream will use. The throughput of the
    #   stream is a function of the number of shards; more shards are required
    #   for greater provisioned throughput.
    #
    #   DefaultShardLimit;
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream({
    #     stream_name: "StreamName", # required
    #     shard_count: 1, # required
    #   })
    #
    # @overload create_stream(params = {})
    # @param [Hash] params ({})
    def create_stream(params = {}, options = {})
      req = build_request(:create_stream, params)
      req.send_request(options)
    end

    # Decreases the Amazon Kinesis stream's retention period, which is the
    # length of time data records are accessible after they are added to the
    # stream. The minimum value of a stream's retention period is 24 hours.
    #
    # This operation may result in lost data. For example, if the stream's
    # retention period is 48 hours and is decreased to 24 hours, any data
    # already in the stream that is older than 24 hours is inaccessible.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream to modify.
    #
    # @option params [required, Integer] :retention_period_hours
    #   The new retention period of the stream, in hours. Must be less than
    #   the current retention period.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_stream_retention_period({
    #     stream_name: "StreamName", # required
    #     retention_period_hours: 1, # required
    #   })
    #
    # @overload decrease_stream_retention_period(params = {})
    # @param [Hash] params ({})
    def decrease_stream_retention_period(params = {}, options = {})
      req = build_request(:decrease_stream_retention_period, params)
      req.send_request(options)
    end

    # Deletes an Amazon Kinesis stream and all its shards and data. You must
    # shut down any applications that are operating on the stream before you
    # delete the stream. If an application attempts to operate on a deleted
    # stream, it will receive the exception `ResourceNotFoundException`.
    #
    # If the stream is in the `ACTIVE` state, you can delete it. After a
    # `DeleteStream` request, the specified stream is in the `DELETING`
    # state until Amazon Kinesis completes the deletion.
    #
    # **Note:** Amazon Kinesis might continue to accept data read and write
    # operations, such as PutRecord, PutRecords, and GetRecords, on a stream
    # in the `DELETING` state until the stream deletion is complete.
    #
    # When you delete a stream, any shards in that stream are also deleted,
    # and any tags are dissociated from the stream.
    #
    # You can use the DescribeStream operation to check the state of the
    # stream, which is returned in `StreamStatus`.
    #
    # DeleteStream has a limit of 5 transactions per second per account.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream({
    #     stream_name: "StreamName", # required
    #   })
    #
    # @overload delete_stream(params = {})
    # @param [Hash] params ({})
    def delete_stream(params = {}, options = {})
      req = build_request(:delete_stream, params)
      req.send_request(options)
    end

    # Describes the shard limits and usage for the account.
    #
    # If you update your account limits, the old limits might be returned
    # for a few minutes.
    #
    # This operation has a limit of 1 transaction per second per account.
    #
    # @return [Types::DescribeLimitsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeLimitsOutput#shard_limit #shard_limit} => Integer
    #   * {Types::DescribeLimitsOutput#open_shard_count #open_shard_count} => Integer
    #
    # @example Response structure
    #
    #   resp.shard_limit #=> Integer
    #   resp.open_shard_count #=> Integer
    #
    # @overload describe_limits(params = {})
    # @param [Hash] params ({})
    def describe_limits(params = {}, options = {})
      req = build_request(:describe_limits, params)
      req.send_request(options)
    end

    # Describes the specified Amazon Kinesis stream.
    #
    # The information returned includes the stream name, Amazon Resource
    # Name (ARN), creation time, enhanced metric configuration, and shard
    # map. The shard map is an array of shard objects. For each shard
    # object, there is the hash key and sequence number ranges that the
    # shard spans, and the IDs of any earlier shards that played in a role
    # in creating the shard. Every record ingested in the stream is
    # identified by a sequence number, which is assigned when the record is
    # put into the stream.
    #
    # You can limit the number of shards returned by each call. For more
    # information, see [Retrieving Shards from a Stream][1] in the *Amazon
    # Kinesis Streams Developer Guide*.
    #
    # There are no guarantees about the chronological order shards returned.
    # To process shards in chronological order, use the ID of the parent
    # shard to track the lineage to the oldest shard.
    #
    # This operation has a limit of 10 transactions per second per account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-retrieve-shards.html
    #
    # @option params [required, String] :stream_name
    #   The name of the stream to describe.
    #
    # @option params [Integer] :limit
    #   The maximum number of shards to return in a single call. The default
    #   value is 100. If you specify a value greater than 100, at most 100
    #   shards are returned.
    #
    # @option params [String] :exclusive_start_shard_id
    #   The shard ID of the shard to start with.
    #
    # @return [Types::DescribeStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamOutput#stream_description #stream_description} => Types::StreamDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_name: "StreamName", # required
    #     limit: 1,
    #     exclusive_start_shard_id: "ShardId",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_description.stream_name #=> String
    #   resp.stream_description.stream_arn #=> String
    #   resp.stream_description.stream_status #=> String, one of "CREATING", "DELETING", "ACTIVE", "UPDATING"
    #   resp.stream_description.shards #=> Array
    #   resp.stream_description.shards[0].shard_id #=> String
    #   resp.stream_description.shards[0].parent_shard_id #=> String
    #   resp.stream_description.shards[0].adjacent_parent_shard_id #=> String
    #   resp.stream_description.shards[0].hash_key_range.starting_hash_key #=> String
    #   resp.stream_description.shards[0].hash_key_range.ending_hash_key #=> String
    #   resp.stream_description.shards[0].sequence_number_range.starting_sequence_number #=> String
    #   resp.stream_description.shards[0].sequence_number_range.ending_sequence_number #=> String
    #   resp.stream_description.has_more_shards #=> Boolean
    #   resp.stream_description.retention_period_hours #=> Integer
    #   resp.stream_description.stream_creation_timestamp #=> Time
    #   resp.stream_description.enhanced_monitoring #=> Array
    #   resp.stream_description.enhanced_monitoring[0].shard_level_metrics #=> Array
    #   resp.stream_description.enhanced_monitoring[0].shard_level_metrics[0] #=> String, one of "IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
    def describe_stream(params = {}, options = {})
      req = build_request(:describe_stream, params)
      req.send_request(options)
    end

    # Disables enhanced monitoring.
    #
    # @option params [required, String] :stream_name
    #   The name of the Amazon Kinesis stream for which to disable enhanced
    #   monitoring.
    #
    # @option params [required, Array<String>] :shard_level_metrics
    #   List of shard-level metrics to disable.
    #
    #   The following are the valid shard-level metrics. The value "`ALL`"
    #   disables every metric.
    #
    #   * `IncomingBytes`
    #
    #   * `IncomingRecords`
    #
    #   * `OutgoingBytes`
    #
    #   * `OutgoingRecords`
    #
    #   * `WriteProvisionedThroughputExceeded`
    #
    #   * `ReadProvisionedThroughputExceeded`
    #
    #   * `IteratorAgeMilliseconds`
    #
    #   * `ALL`
    #
    #   For more information, see [Monitoring the Amazon Kinesis Streams
    #   Service with Amazon CloudWatch][1] in the *Amazon Kinesis Streams
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #
    # @return [Types::EnhancedMonitoringOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnhancedMonitoringOutput#stream_name #stream_name} => String
    #   * {Types::EnhancedMonitoringOutput#current_shard_level_metrics #current_shard_level_metrics} => Array&lt;String&gt;
    #   * {Types::EnhancedMonitoringOutput#desired_shard_level_metrics #desired_shard_level_metrics} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_enhanced_monitoring({
    #     stream_name: "StreamName", # required
    #     shard_level_metrics: ["IncomingBytes"], # required, accepts IncomingBytes, IncomingRecords, OutgoingBytes, OutgoingRecords, WriteProvisionedThroughputExceeded, ReadProvisionedThroughputExceeded, IteratorAgeMilliseconds, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_name #=> String
    #   resp.current_shard_level_metrics #=> Array
    #   resp.current_shard_level_metrics[0] #=> String, one of "IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"
    #   resp.desired_shard_level_metrics #=> Array
    #   resp.desired_shard_level_metrics[0] #=> String, one of "IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"
    #
    # @overload disable_enhanced_monitoring(params = {})
    # @param [Hash] params ({})
    def disable_enhanced_monitoring(params = {}, options = {})
      req = build_request(:disable_enhanced_monitoring, params)
      req.send_request(options)
    end

    # Enables enhanced Amazon Kinesis stream monitoring for shard-level
    # metrics.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream for which to enable enhanced monitoring.
    #
    # @option params [required, Array<String>] :shard_level_metrics
    #   List of shard-level metrics to enable.
    #
    #   The following are the valid shard-level metrics. The value "`ALL`"
    #   enables every metric.
    #
    #   * `IncomingBytes`
    #
    #   * `IncomingRecords`
    #
    #   * `OutgoingBytes`
    #
    #   * `OutgoingRecords`
    #
    #   * `WriteProvisionedThroughputExceeded`
    #
    #   * `ReadProvisionedThroughputExceeded`
    #
    #   * `IteratorAgeMilliseconds`
    #
    #   * `ALL`
    #
    #   For more information, see [Monitoring the Amazon Kinesis Streams
    #   Service with Amazon CloudWatch][1] in the *Amazon Kinesis Streams
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring-with-cloudwatch.html
    #
    # @return [Types::EnhancedMonitoringOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EnhancedMonitoringOutput#stream_name #stream_name} => String
    #   * {Types::EnhancedMonitoringOutput#current_shard_level_metrics #current_shard_level_metrics} => Array&lt;String&gt;
    #   * {Types::EnhancedMonitoringOutput#desired_shard_level_metrics #desired_shard_level_metrics} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_enhanced_monitoring({
    #     stream_name: "StreamName", # required
    #     shard_level_metrics: ["IncomingBytes"], # required, accepts IncomingBytes, IncomingRecords, OutgoingBytes, OutgoingRecords, WriteProvisionedThroughputExceeded, ReadProvisionedThroughputExceeded, IteratorAgeMilliseconds, ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_name #=> String
    #   resp.current_shard_level_metrics #=> Array
    #   resp.current_shard_level_metrics[0] #=> String, one of "IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"
    #   resp.desired_shard_level_metrics #=> Array
    #   resp.desired_shard_level_metrics[0] #=> String, one of "IncomingBytes", "IncomingRecords", "OutgoingBytes", "OutgoingRecords", "WriteProvisionedThroughputExceeded", "ReadProvisionedThroughputExceeded", "IteratorAgeMilliseconds", "ALL"
    #
    # @overload enable_enhanced_monitoring(params = {})
    # @param [Hash] params ({})
    def enable_enhanced_monitoring(params = {}, options = {})
      req = build_request(:enable_enhanced_monitoring, params)
      req.send_request(options)
    end

    # Gets data records from an Amazon Kinesis stream's shard.
    #
    # Specify a shard iterator using the `ShardIterator` parameter. The
    # shard iterator specifies the position in the shard from which you want
    # to start reading data records sequentially. If there are no records
    # available in the portion of the shard that the iterator points to,
    # GetRecords returns an empty list. Note that it might take multiple
    # calls to get to a portion of the shard that contains records.
    #
    # You can scale by provisioning multiple shards per stream while
    # considering service limits (for more information, see [Streams
    # Limits][1] in the *Amazon Kinesis Streams Developer Guide*). Your
    # application should have one thread per shard, each reading
    # continuously from its stream. To read from a stream continually, call
    # GetRecords in a loop. Use GetShardIterator to get the shard iterator
    # to specify in the first GetRecords call. GetRecords returns a new
    # shard iterator in `NextShardIterator`. Specify the shard iterator
    # returned in `NextShardIterator` in subsequent calls to GetRecords.
    # Note that if the shard has been closed, the shard iterator can't
    # return more data and GetRecords returns `null` in `NextShardIterator`.
    # You can terminate the loop when the shard is closed, or when the shard
    # iterator reaches the record with the sequence number or other
    # attribute that marks it as the last record to process.
    #
    # Each data record can be up to 1 MB in size, and each shard can read up
    # to 2 MB per second. You can ensure that your calls don't exceed the
    # maximum supported size or throughput by using the `Limit` parameter to
    # specify the maximum number of records that GetRecords can return.
    # Consider your average record size when determining this limit.
    #
    # The size of the data returned by GetRecords varies depending on the
    # utilization of the shard. The maximum size of data that GetRecords can
    # return is 10 MB. If a call returns this amount of data, subsequent
    # calls made within the next 5 seconds throw
    # `ProvisionedThroughputExceededException`. If there is insufficient
    # provisioned throughput on the shard, subsequent calls made within the
    # next 1 second throw `ProvisionedThroughputExceededException`. Note
    # that GetRecords won't return any data when it throws an exception.
    # For this reason, we recommend that you wait one second between calls
    # to GetRecords; however, it's possible that the application will get
    # exceptions for longer than 1 second.
    #
    # To detect whether the application is falling behind in processing, you
    # can use the `MillisBehindLatest` response attribute. You can also
    # monitor the stream using CloudWatch metrics and other mechanisms (see
    # [Monitoring][2] in the *Amazon Kinesis Streams Developer Guide*).
    #
    # Each Amazon Kinesis record includes a value,
    # `ApproximateArrivalTimestamp`, that is set when a stream successfully
    # receives and stores a record. This is commonly referred to as a
    # server-side timestamp, whereas a client-side timestamp is set when a
    # data producer creates or sends the record to a stream (a data producer
    # is any data source putting data records into a stream, for example
    # with PutRecords). The timestamp has millisecond precision. There are
    # no guarantees about the timestamp accuracy, or that the timestamp is
    # always increasing. For example, records in a shard or across a stream
    # might have timestamps that are out of order.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    # [2]: http://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html
    #
    # @option params [required, String] :shard_iterator
    #   The position in the shard from which you want to start sequentially
    #   reading data records. A shard iterator specifies this position using
    #   the sequence number of a data record in the shard.
    #
    # @option params [Integer] :limit
    #   The maximum number of records to return. Specify a value of up to
    #   10,000. If you specify a value that is greater than 10,000, GetRecords
    #   throws `InvalidArgumentException`.
    #
    # @return [Types::GetRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRecordsOutput#records #records} => Array&lt;Types::Record&gt;
    #   * {Types::GetRecordsOutput#next_shard_iterator #next_shard_iterator} => String
    #   * {Types::GetRecordsOutput#millis_behind_latest #millis_behind_latest} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_records({
    #     shard_iterator: "ShardIterator", # required
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.records #=> Array
    #   resp.records[0].sequence_number #=> String
    #   resp.records[0].approximate_arrival_timestamp #=> Time
    #   resp.records[0].data #=> String
    #   resp.records[0].partition_key #=> String
    #   resp.next_shard_iterator #=> String
    #   resp.millis_behind_latest #=> Integer
    #
    # @overload get_records(params = {})
    # @param [Hash] params ({})
    def get_records(params = {}, options = {})
      req = build_request(:get_records, params)
      req.send_request(options)
    end

    # Gets an Amazon Kinesis shard iterator. A shard iterator expires five
    # minutes after it is returned to the requester.
    #
    # A shard iterator specifies the shard position from which to start
    # reading data records sequentially. The position is specified using the
    # sequence number of a data record in a shard. A sequence number is the
    # identifier associated with every record ingested in the stream, and is
    # assigned when a record is put into the stream. Each stream has one or
    # more shards.
    #
    # You must specify the shard iterator type. For example, you can set the
    # `ShardIteratorType` parameter to read exactly from the position
    # denoted by a specific sequence number by using the
    # `AT_SEQUENCE_NUMBER` shard iterator type, or right after the sequence
    # number by using the `AFTER_SEQUENCE_NUMBER` shard iterator type, using
    # sequence numbers returned by earlier calls to PutRecord, PutRecords,
    # GetRecords, or DescribeStream. In the request, you can specify the
    # shard iterator type `AT_TIMESTAMP` to read records from an arbitrary
    # point in time, `TRIM_HORIZON` to cause `ShardIterator` to point to the
    # last untrimmed record in the shard in the system (the oldest data
    # record in the shard), or `LATEST` so that you always read the most
    # recent data in the shard.
    #
    # When you read repeatedly from a stream, use a GetShardIterator request
    # to get the first shard iterator for use in your first GetRecords
    # request and for subsequent reads use the shard iterator returned by
    # the GetRecords request in `NextShardIterator`. A new shard iterator is
    # returned by every GetRecords request in `NextShardIterator`, which you
    # use in the `ShardIterator` parameter of the next GetRecords request.
    #
    # If a GetShardIterator request is made too often, you receive a
    # `ProvisionedThroughputExceededException`. For more information about
    # throughput limits, see GetRecords, and [Streams Limits][1] in the
    # *Amazon Kinesis Streams Developer Guide*.
    #
    # If the shard is closed, GetShardIterator returns a valid iterator for
    # the last sequence number of the shard. Note that a shard can be closed
    # as a result of using SplitShard or MergeShards.
    #
    # GetShardIterator has a limit of 5 transactions per second per account
    # per open shard.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    #
    # @option params [required, String] :stream_name
    #   The name of the Amazon Kinesis stream.
    #
    # @option params [required, String] :shard_id
    #   The shard ID of the Amazon Kinesis shard to get the iterator for.
    #
    # @option params [required, String] :shard_iterator_type
    #   Determines how the shard iterator is used to start reading data
    #   records from the shard.
    #
    #   The following are the valid Amazon Kinesis shard iterator types:
    #
    #   * AT\_SEQUENCE\_NUMBER - Start reading from the position denoted by a
    #     specific sequence number, provided in the value
    #     `StartingSequenceNumber`.
    #
    #   * AFTER\_SEQUENCE\_NUMBER - Start reading right after the position
    #     denoted by a specific sequence number, provided in the value
    #     `StartingSequenceNumber`.
    #
    #   * AT\_TIMESTAMP - Start reading from the position denoted by a
    #     specific timestamp, provided in the value `Timestamp`.
    #
    #   * TRIM\_HORIZON - Start reading at the last untrimmed record in the
    #     shard in the system, which is the oldest data record in the shard.
    #
    #   * LATEST - Start reading just after the most recent record in the
    #     shard, so that you always read the most recent data in the shard.
    #
    # @option params [String] :starting_sequence_number
    #   The sequence number of the data record in the shard from which to
    #   start reading. Used with shard iterator type AT\_SEQUENCE\_NUMBER and
    #   AFTER\_SEQUENCE\_NUMBER.
    #
    # @option params [Time,DateTime,Date,Integer,String] :timestamp
    #   The timestamp of the data record from which to start reading. Used
    #   with shard iterator type AT\_TIMESTAMP. A timestamp is the Unix epoch
    #   date with precision in milliseconds. For example,
    #   `2016-04-04T19:58:46.480-00:00` or `1459799926.480`. If a record with
    #   this exact timestamp does not exist, the iterator returned is for the
    #   next (later) record. If the timestamp is older than the current trim
    #   horizon, the iterator returned is for the oldest untrimmed data record
    #   (TRIM\_HORIZON).
    #
    # @return [Types::GetShardIteratorOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetShardIteratorOutput#shard_iterator #shard_iterator} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_shard_iterator({
    #     stream_name: "StreamName", # required
    #     shard_id: "ShardId", # required
    #     shard_iterator_type: "AT_SEQUENCE_NUMBER", # required, accepts AT_SEQUENCE_NUMBER, AFTER_SEQUENCE_NUMBER, TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #     starting_sequence_number: "SequenceNumber",
    #     timestamp: Time.now,
    #   })
    #
    # @example Response structure
    #
    #   resp.shard_iterator #=> String
    #
    # @overload get_shard_iterator(params = {})
    # @param [Hash] params ({})
    def get_shard_iterator(params = {}, options = {})
      req = build_request(:get_shard_iterator, params)
      req.send_request(options)
    end

    # Increases the Amazon Kinesis stream's retention period, which is the
    # length of time data records are accessible after they are added to the
    # stream. The maximum value of a stream's retention period is 168 hours
    # (7 days).
    #
    # Upon choosing a longer stream retention period, this operation will
    # increase the time period records are accessible that have not yet
    # expired. However, it will not make previous data that has expired
    # (older than the stream's previous retention period) accessible after
    # the operation has been called. For example, if a stream's retention
    # period is set to 24 hours and is increased to 168 hours, any data that
    # is older than 24 hours will remain inaccessible to consumer
    # applications.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream to modify.
    #
    # @option params [required, Integer] :retention_period_hours
    #   The new retention period of the stream, in hours. Must be more than
    #   the current retention period.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_stream_retention_period({
    #     stream_name: "StreamName", # required
    #     retention_period_hours: 1, # required
    #   })
    #
    # @overload increase_stream_retention_period(params = {})
    # @param [Hash] params ({})
    def increase_stream_retention_period(params = {}, options = {})
      req = build_request(:increase_stream_retention_period, params)
      req.send_request(options)
    end

    # Lists your Amazon Kinesis streams.
    #
    # The number of streams may be too large to return from a single call to
    # `ListStreams`. You can limit the number of returned streams using the
    # `Limit` parameter. If you do not specify a value for the `Limit`
    # parameter, Amazon Kinesis uses the default limit, which is currently
    # 10.
    #
    # You can detect if there are more streams available to list by using
    # the `HasMoreStreams` flag from the returned output. If there are more
    # streams available, you can request more streams by using the name of
    # the last stream returned by the `ListStreams` request in the
    # `ExclusiveStartStreamName` parameter in a subsequent request to
    # `ListStreams`. The group of stream names returned by the subsequent
    # request is then added to the list. You can continue this process until
    # all the stream names have been collected in the list.
    #
    # ListStreams has a limit of 5 transactions per second per account.
    #
    # @option params [Integer] :limit
    #   The maximum number of streams to list.
    #
    # @option params [String] :exclusive_start_stream_name
    #   The name of the stream to start the list with.
    #
    # @return [Types::ListStreamsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsOutput#stream_names #stream_names} => Array&lt;String&gt;
    #   * {Types::ListStreamsOutput#has_more_streams #has_more_streams} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     limit: 1,
    #     exclusive_start_stream_name: "StreamName",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_names #=> Array
    #   resp.stream_names[0] #=> String
    #   resp.has_more_streams #=> Boolean
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # Lists the tags for the specified Amazon Kinesis stream.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream.
    #
    # @option params [String] :exclusive_start_tag_key
    #   The key to use as the starting point for the list of tags. If this
    #   parameter is set, `ListTagsForStream` gets all tags that occur after
    #   `ExclusiveStartTagKey`.
    #
    # @option params [Integer] :limit
    #   The number of tags to return. If this number is less than the total
    #   number of tags associated with the stream, `HasMoreTags` is set to
    #   `true`. To list additional tags, set `ExclusiveStartTagKey` to the
    #   last key in the response.
    #
    # @return [Types::ListTagsForStreamOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForStreamOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::ListTagsForStreamOutput#has_more_tags #has_more_tags} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_stream({
    #     stream_name: "StreamName", # required
    #     exclusive_start_tag_key: "TagKey",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.has_more_tags #=> Boolean
    #
    # @overload list_tags_for_stream(params = {})
    # @param [Hash] params ({})
    def list_tags_for_stream(params = {}, options = {})
      req = build_request(:list_tags_for_stream, params)
      req.send_request(options)
    end

    # Merges two adjacent shards in an Amazon Kinesis stream and combines
    # them into a single shard to reduce the stream's capacity to ingest
    # and transport data. Two shards are considered adjacent if the union of
    # the hash key ranges for the two shards form a contiguous set with no
    # gaps. For example, if you have two shards, one with a hash key range
    # of 276...381 and the other with a hash key range of 382...454, then
    # you could merge these two shards into a single shard that would have a
    # hash key range of 276...454. After the merge, the single child shard
    # receives data for all hash key values covered by the two parent
    # shards.
    #
    # `MergeShards` is called when there is a need to reduce the overall
    # capacity of a stream because of excess capacity that is not being
    # used. You must specify the shard to be merged and the adjacent shard
    # for a stream. For more information about merging shards, see [Merge
    # Two Shards][1] in the *Amazon Kinesis Streams Developer Guide*.
    #
    # If the stream is in the `ACTIVE` state, you can call `MergeShards`. If
    # a stream is in the `CREATING`, `UPDATING`, or `DELETING` state,
    # `MergeShards` returns a `ResourceInUseException`. If the specified
    # stream does not exist, `MergeShards` returns a
    # `ResourceNotFoundException`.
    #
    # You can use DescribeStream to check the state of the stream, which is
    # returned in `StreamStatus`.
    #
    # `MergeShards` is an asynchronous operation. Upon receiving a
    # `MergeShards` request, Amazon Kinesis immediately returns a response
    # and sets the `StreamStatus` to `UPDATING`. After the operation is
    # completed, Amazon Kinesis sets the `StreamStatus` to `ACTIVE`. Read
    # and write operations continue to work while the stream is in the
    # `UPDATING` state.
    #
    # You use DescribeStream to determine the shard IDs that are specified
    # in the `MergeShards` request.
    #
    # If you try to operate on too many streams in parallel using
    # CreateStream, DeleteStream, `MergeShards` or SplitShard, you will
    # receive a `LimitExceededException`.
    #
    # `MergeShards` has limit of 5 transactions per second per account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-merge.html
    #
    # @option params [required, String] :stream_name
    #   The name of the stream for the merge.
    #
    # @option params [required, String] :shard_to_merge
    #   The shard ID of the shard to combine with the adjacent shard for the
    #   merge.
    #
    # @option params [required, String] :adjacent_shard_to_merge
    #   The shard ID of the adjacent shard for the merge.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_shards({
    #     stream_name: "StreamName", # required
    #     shard_to_merge: "ShardId", # required
    #     adjacent_shard_to_merge: "ShardId", # required
    #   })
    #
    # @overload merge_shards(params = {})
    # @param [Hash] params ({})
    def merge_shards(params = {}, options = {})
      req = build_request(:merge_shards, params)
      req.send_request(options)
    end

    # Writes a single data record into an Amazon Kinesis stream. Call
    # `PutRecord` to send data into the stream for real-time ingestion and
    # subsequent processing, one record at a time. Each shard can support
    # writes up to 1,000 records per second, up to a maximum data write
    # total of 1 MB per second.
    #
    # You must specify the name of the stream that captures, stores, and
    # transports the data; a partition key; and the data blob itself.
    #
    # The data blob can be any type of data; for example, a segment from a
    # log file, geographic/location data, website clickstream data, and so
    # on.
    #
    # The partition key is used by Amazon Kinesis to distribute data across
    # shards. Amazon Kinesis segregates the data records that belong to a
    # stream into multiple shards, using the partition key associated with
    # each data record to determine which shard a given data record belongs
    # to.
    #
    # Partition keys are Unicode strings, with a maximum length limit of 256
    # characters for each key. An MD5 hash function is used to map partition
    # keys to 128-bit integer values and to map associated data records to
    # shards using the hash key ranges of the shards. You can override
    # hashing the partition key to determine the shard by explicitly
    # specifying a hash value using the `ExplicitHashKey` parameter. For
    # more information, see [Adding Data to a Stream][1] in the *Amazon
    # Kinesis Streams Developer Guide*.
    #
    # `PutRecord` returns the shard ID of where the data record was placed
    # and the sequence number that was assigned to the data record.
    #
    # Sequence numbers increase over time and are specific to a shard within
    # a stream, not across all shards within a stream. To guarantee strictly
    # increasing ordering, write serially to a shard and use the
    # `SequenceNumberForOrdering` parameter. For more information, see
    # [Adding Data to a Stream][1] in the *Amazon Kinesis Streams Developer
    # Guide*.
    #
    # If a `PutRecord` request cannot be processed because of insufficient
    # provisioned throughput on the shard involved in the request,
    # `PutRecord` throws `ProvisionedThroughputExceededException`.
    #
    # Data records are accessible for only 24 hours from the time that they
    # are added to a stream.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream
    #
    # @option params [required, String] :stream_name
    #   The name of the stream to put the data record into.
    #
    # @option params [required, String, IO] :data
    #   The data blob to put into the record, which is base64-encoded when the
    #   blob is serialized. When the data blob (the payload before
    #   base64-encoding) is added to the partition key size, the total size
    #   must not exceed the maximum record size (1 MB).
    #
    # @option params [required, String] :partition_key
    #   Determines which shard in the stream the data record is assigned to.
    #   Partition keys are Unicode strings with a maximum length limit of 256
    #   characters for each key. Amazon Kinesis uses the partition key as
    #   input to a hash function that maps the partition key and associated
    #   data to a specific shard. Specifically, an MD5 hash function is used
    #   to map partition keys to 128-bit integer values and to map associated
    #   data records to shards. As a result of this hashing mechanism, all
    #   data records with the same partition key map to the same shard within
    #   the stream.
    #
    # @option params [String] :explicit_hash_key
    #   The hash value used to explicitly determine the shard the data record
    #   is assigned to by overriding the partition key hash.
    #
    # @option params [String] :sequence_number_for_ordering
    #   Guarantees strictly increasing sequence numbers, for puts from the
    #   same client and to the same partition key. Usage: set the
    #   `SequenceNumberForOrdering` of record *n* to the sequence number of
    #   record *n-1* (as returned in the result when putting record *n-1*). If
    #   this parameter is not set, records will be coarsely ordered based on
    #   arrival time.
    #
    # @return [Types::PutRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordOutput#shard_id #shard_id} => String
    #   * {Types::PutRecordOutput#sequence_number #sequence_number} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_record({
    #     stream_name: "StreamName", # required
    #     data: "data", # required
    #     partition_key: "PartitionKey", # required
    #     explicit_hash_key: "HashKey",
    #     sequence_number_for_ordering: "SequenceNumber",
    #   })
    #
    # @example Response structure
    #
    #   resp.shard_id #=> String
    #   resp.sequence_number #=> String
    #
    # @overload put_record(params = {})
    # @param [Hash] params ({})
    def put_record(params = {}, options = {})
      req = build_request(:put_record, params)
      req.send_request(options)
    end

    # Writes multiple data records into an Amazon Kinesis stream in a single
    # call (also referred to as a `PutRecords` request). Use this operation
    # to send data into the stream for data ingestion and processing.
    #
    # Each `PutRecords` request can support up to 500 records. Each record
    # in the request can be as large as 1 MB, up to a limit of 5 MB for the
    # entire request, including partition keys. Each shard can support
    # writes up to 1,000 records per second, up to a maximum data write
    # total of 1 MB per second.
    #
    # You must specify the name of the stream that captures, stores, and
    # transports the data; and an array of request `Records`, with each
    # record in the array requiring a partition key and data blob. The
    # record size limit applies to the total size of the partition key and
    # data blob.
    #
    # The data blob can be any type of data; for example, a segment from a
    # log file, geographic/location data, website clickstream data, and so
    # on.
    #
    # The partition key is used by Amazon Kinesis as input to a hash
    # function that maps the partition key and associated data to a specific
    # shard. An MD5 hash function is used to map partition keys to 128-bit
    # integer values and to map associated data records to shards. As a
    # result of this hashing mechanism, all data records with the same
    # partition key map to the same shard within the stream. For more
    # information, see [Adding Data to a Stream][1] in the *Amazon Kinesis
    # Streams Developer Guide*.
    #
    # Each record in the `Records` array may include an optional parameter,
    # `ExplicitHashKey`, which overrides the partition key to shard mapping.
    # This parameter allows a data producer to determine explicitly the
    # shard where the record is stored. For more information, see [Adding
    # Multiple Records with PutRecords][2] in the *Amazon Kinesis Streams
    # Developer Guide*.
    #
    # The `PutRecords` response includes an array of response `Records`.
    # Each record in the response array directly correlates with a record in
    # the request array using natural ordering, from the top to the bottom
    # of the request and response. The response `Records` array always
    # includes the same number of records as the request array.
    #
    # The response `Records` array includes both successfully and
    # unsuccessfully processed records. Amazon Kinesis attempts to process
    # all records in each `PutRecords` request. A single record failure does
    # not stop the processing of subsequent records.
    #
    # A successfully-processed record includes `ShardId` and
    # `SequenceNumber` values. The `ShardId` parameter identifies the shard
    # in the stream where the record is stored. The `SequenceNumber`
    # parameter is an identifier assigned to the put record, unique to all
    # records in the stream.
    #
    # An unsuccessfully-processed record includes `ErrorCode` and
    # `ErrorMessage` values. `ErrorCode` reflects the type of error and can
    # be one of the following values:
    # `ProvisionedThroughputExceededException` or `InternalFailure`.
    # `ErrorMessage` provides more detailed information about the
    # `ProvisionedThroughputExceededException` exception including the
    # account ID, stream name, and shard ID of the record that was
    # throttled. For more information about partially successful responses,
    # see [Adding Multiple Records with PutRecords][3] in the *Amazon
    # Kinesis Streams Developer Guide*.
    #
    # By default, data records are accessible for only 24 hours from the
    # time that they are added to an Amazon Kinesis stream. This retention
    # period can be modified using the DecreaseStreamRetentionPeriod and
    # IncreaseStreamRetentionPeriod operations.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-add-data-to-stream
    # [2]: http://docs.aws.amazon.com/kinesis/latest/dev/developing-producers-with-sdk.html#kinesis-using-sdk-java-putrecords
    # [3]: http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-add-data-to-stream.html#kinesis-using-sdk-java-putrecords
    #
    # @option params [required, Array<Types::PutRecordsRequestEntry>] :records
    #   The records associated with the request.
    #
    # @option params [required, String] :stream_name
    #   The stream name associated with the request.
    #
    # @return [Types::PutRecordsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutRecordsOutput#failed_record_count #failed_record_count} => Integer
    #   * {Types::PutRecordsOutput#records #records} => Array&lt;Types::PutRecordsResultEntry&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_records({
    #     records: [ # required
    #       {
    #         data: "data", # required
    #         explicit_hash_key: "HashKey",
    #         partition_key: "PartitionKey", # required
    #       },
    #     ],
    #     stream_name: "StreamName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_record_count #=> Integer
    #   resp.records #=> Array
    #   resp.records[0].sequence_number #=> String
    #   resp.records[0].shard_id #=> String
    #   resp.records[0].error_code #=> String
    #   resp.records[0].error_message #=> String
    #
    # @overload put_records(params = {})
    # @param [Hash] params ({})
    def put_records(params = {}, options = {})
      req = build_request(:put_records, params)
      req.send_request(options)
    end

    # Removes tags from the specified Amazon Kinesis stream. Removed tags
    # are deleted and cannot be recovered after this operation successfully
    # completes.
    #
    # If you specify a tag that does not exist, it is ignored.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the stream.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_stream({
    #     stream_name: "StreamName", # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @overload remove_tags_from_stream(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_stream(params = {}, options = {})
      req = build_request(:remove_tags_from_stream, params)
      req.send_request(options)
    end

    # Splits a shard into two new shards in the Amazon Kinesis stream to
    # increase the stream's capacity to ingest and transport data.
    # `SplitShard` is called when there is a need to increase the overall
    # capacity of a stream because of an expected increase in the volume of
    # data records being ingested.
    #
    # You can also use `SplitShard` when a shard appears to be approaching
    # its maximum utilization; for example, the producers sending data into
    # the specific shard are suddenly sending more than previously
    # anticipated. You can also call `SplitShard` to increase stream
    # capacity, so that more Amazon Kinesis applications can simultaneously
    # read data from the stream for real-time processing.
    #
    # You must specify the shard to be split and the new hash key, which is
    # the position in the shard where the shard gets split in two. In many
    # cases, the new hash key might simply be the average of the beginning
    # and ending hash key, but it can be any hash key value in the range
    # being mapped into the shard. For more information about splitting
    # shards, see [Split a Shard][1] in the *Amazon Kinesis Streams
    # Developer Guide*.
    #
    # You can use DescribeStream to determine the shard ID and hash key
    # values for the `ShardToSplit` and `NewStartingHashKey` parameters that
    # are specified in the `SplitShard` request.
    #
    # `SplitShard` is an asynchronous operation. Upon receiving a
    # `SplitShard` request, Amazon Kinesis immediately returns a response
    # and sets the stream status to `UPDATING`. After the operation is
    # completed, Amazon Kinesis sets the stream status to `ACTIVE`. Read and
    # write operations continue to work while the stream is in the
    # `UPDATING` state.
    #
    # You can use `DescribeStream` to check the status of the stream, which
    # is returned in `StreamStatus`. If the stream is in the `ACTIVE` state,
    # you can call `SplitShard`. If a stream is in `CREATING` or `UPDATING`
    # or `DELETING` states, `DescribeStream` returns a
    # `ResourceInUseException`.
    #
    # If the specified stream does not exist, `DescribeStream` returns a
    # `ResourceNotFoundException`. If you try to create more shards than are
    # authorized for your account, you receive a `LimitExceededException`.
    #
    # For the default shard limit for an AWS account, see [Streams
    # Limits][2] in the *Amazon Kinesis Streams Developer Guide*. If you
    # need to increase this limit, [contact AWS Support][3].
    #
    # If you try to operate on too many streams simultaneously using
    # CreateStream, DeleteStream, MergeShards, and/or SplitShard, you
    # receive a `LimitExceededException`.
    #
    # `SplitShard` has limit of 5 transactions per second per account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/kinesis-using-sdk-java-resharding-split.html
    # [2]: http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    # [3]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @option params [required, String] :stream_name
    #   The name of the stream for the shard split.
    #
    # @option params [required, String] :shard_to_split
    #   The shard ID of the shard to split.
    #
    # @option params [required, String] :new_starting_hash_key
    #   A hash key value for the starting hash key of one of the child shards
    #   created by the split. The hash key range for a given shard constitutes
    #   a set of ordered contiguous positive integers. The value for
    #   `NewStartingHashKey` must be in the range of hash keys being mapped
    #   into the shard. The `NewStartingHashKey` hash key value and all higher
    #   hash key values in hash key range are distributed to one of the child
    #   shards. All the lower hash key values in the range are distributed to
    #   the other child shard.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.split_shard({
    #     stream_name: "StreamName", # required
    #     shard_to_split: "ShardId", # required
    #     new_starting_hash_key: "HashKey", # required
    #   })
    #
    # @overload split_shard(params = {})
    # @param [Hash] params ({})
    def split_shard(params = {}, options = {})
      req = build_request(:split_shard, params)
      req.send_request(options)
    end

    # Updates the shard count of the specified stream to the specified
    # number of shards.
    #
    # Updating the shard count is an asynchronous operation. Upon receiving
    # the request, Amazon Kinesis returns immediately and sets the status of
    # the stream to `UPDATING`. After the update is complete, Amazon Kinesis
    # sets the status of the stream back to `ACTIVE`. Depending on the size
    # of the stream, the scaling action could take a few minutes to
    # complete. You can continue to read and write data to your stream while
    # its status is `UPDATING`.
    #
    # To update the shard count, Amazon Kinesis performs splits and merges
    # and individual shards. This can cause short-lived shards to be
    # created, in addition to the final shards. We recommend that you double
    # or halve the shard count, as this results in the fewest number of
    # splits or merges.
    #
    # This operation has a rate limit of twice per rolling 24 hour period.
    # You cannot scale above double your current shard count, scale below
    # half your current shard count, or exceed the shard limits for your
    # account.
    #
    # For the default limits for an AWS account, see [Streams Limits][1] in
    # the *Amazon Kinesis Streams Developer Guide*. If you need to increase
    # a limit, [contact AWS Support][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html
    # [2]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
    #
    # @option params [required, String] :stream_name
    #   The name of the stream.
    #
    # @option params [required, Integer] :target_shard_count
    #   The new number of shards.
    #
    # @option params [required, String] :scaling_type
    #   The scaling type. Uniform scaling creates shards of equal size.
    #
    # @return [Types::UpdateShardCountOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateShardCountOutput#stream_name #stream_name} => String
    #   * {Types::UpdateShardCountOutput#current_shard_count #current_shard_count} => Integer
    #   * {Types::UpdateShardCountOutput#target_shard_count #target_shard_count} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_shard_count({
    #     stream_name: "StreamName", # required
    #     target_shard_count: 1, # required
    #     scaling_type: "UNIFORM_SCALING", # required, accepts UNIFORM_SCALING
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_name #=> String
    #   resp.current_shard_count #=> Integer
    #   resp.target_shard_count #=> Integer
    #
    # @overload update_shard_count(params = {})
    # @param [Hash] params ({})
    def update_shard_count(params = {}, options = {})
      req = build_request(:update_shard_count, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-kinesis'
      context[:gem_version] = '1.0.0.rc1'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name   | params             | :delay   | :max_attempts |
    # | ------------- | ------------------ | -------- | ------------- |
    # | stream_exists | {#describe_stream} | 10       | 18            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
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

    # @api private
    # @deprecated
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
      {
        stream_exists: Waiters::StreamExists
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
