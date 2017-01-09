# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SNS
  module Types

    # @note When making an API call, you may pass AddPermissionInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         label: "label", # required
    #         aws_account_id: ["delegate"], # required
    #         action_name: ["action"], # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic whose access control policy you wish to modify.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   A unique identifier for the new policy statement.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account IDs of the users (principals) who will be given
    #   access to the specified actions. The users must have AWS accounts,
    #   but do not need to be signed up for this service.
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_name
    #   The action you want to allow for the specified principal(s).
    #
    #   Valid values: any Amazon SNS action name.
    #   @return [Array<String>]
    #
    class AddPermissionInput < Struct.new(
      :topic_arn,
      :label,
      :aws_account_id,
      :action_name)
      include Aws::Structure
    end

    # The input for the `CheckIfPhoneNumberIsOptedOut` action.
    #
    # @note When making an API call, you may pass CheckIfPhoneNumberIsOptedOutInput
    #   data as a hash:
    #
    #       {
    #         phone_number: "PhoneNumber", # required
    #       }
    #
    # @!attribute [rw] phone_number
    #   The phone number for which you want to check the opt out status.
    #   @return [String]
    #
    class CheckIfPhoneNumberIsOptedOutInput < Struct.new(
      :phone_number)
      include Aws::Structure
    end

    # The response from the `CheckIfPhoneNumberIsOptedOut` action.
    #
    # @!attribute [rw] is_opted_out
    #   Indicates whether the phone number is opted out:
    #
    #   * `true` – The phone number is opted out, meaning you cannot publish
    #     SMS messages to it.
    #
    #   * `false` – The phone number is opted in, meaning you can publish
    #     SMS messages to it.
    #   @return [Boolean]
    #
    class CheckIfPhoneNumberIsOptedOutResponse < Struct.new(
      :is_opted_out)
      include Aws::Structure
    end

    # Input for ConfirmSubscription action.
    #
    # @note When making an API call, you may pass ConfirmSubscriptionInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         token: "token", # required
    #         authenticate_on_unsubscribe: "authenticateOnUnsubscribe",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic for which you wish to confirm a subscription.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   Short-lived token sent to an endpoint during the `Subscribe` action.
    #   @return [String]
    #
    # @!attribute [rw] authenticate_on_unsubscribe
    #   Disallows unauthenticated unsubscribes of the subscription. If the
    #   value of this parameter is `true` and the request has an AWS
    #   signature, then only the topic owner and the subscription owner can
    #   unsubscribe the endpoint. The unsubscribe action requires AWS
    #   authentication.
    #   @return [String]
    #
    class ConfirmSubscriptionInput < Struct.new(
      :topic_arn,
      :token,
      :authenticate_on_unsubscribe)
      include Aws::Structure
    end

    # Response for ConfirmSubscriptions action.
    #
    # @!attribute [rw] subscription_arn
    #   The ARN of the created subscription.
    #   @return [String]
    #
    class ConfirmSubscriptionResponse < Struct.new(
      :subscription_arn)
      include Aws::Structure
    end

    # Response from CreateEndpoint action.
    #
    # @!attribute [rw] endpoint_arn
    #   EndpointArn returned from CreateEndpoint action.
    #   @return [String]
    #
    class CreateEndpointResponse < Struct.new(
      :endpoint_arn)
      include Aws::Structure
    end

    # Input for CreatePlatformApplication action.
    #
    # @note When making an API call, you may pass CreatePlatformApplicationInput
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         platform: "String", # required
    #         attributes: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Application names must be made up of only uppercase and lowercase
    #   ASCII letters, numbers, underscores, hyphens, and periods, and must
    #   be between 1 and 256 characters long.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The following platforms are supported: ADM (Amazon Device
    #   Messaging), APNS (Apple Push Notification Service), APNS\_SANDBOX,
    #   and GCM (Google Cloud Messaging).
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   For a list of attributes, see [SetPlatformApplicationAttributes][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html
    #   @return [Hash<String,String>]
    #
    class CreatePlatformApplicationInput < Struct.new(
      :name,
      :platform,
      :attributes)
      include Aws::Structure
    end

    # Response from CreatePlatformApplication action.
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn is returned.
    #   @return [String]
    #
    class CreatePlatformApplicationResponse < Struct.new(
      :platform_application_arn)
      include Aws::Structure
    end

    # Input for CreatePlatformEndpoint action.
    #
    # @note When making an API call, you may pass CreatePlatformEndpointInput
    #   data as a hash:
    #
    #       {
    #         platform_application_arn: "String", # required
    #         token: "String", # required
    #         custom_user_data: "String",
    #         attributes: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn returned from CreatePlatformApplication is
    #   used to create a an endpoint.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   Unique identifier created by the notification service for an app on
    #   a device. The specific name for Token will vary, depending on which
    #   notification service is being used. For example, when using APNS as
    #   the notification service, you need the device token. Alternatively,
    #   when using GCM or ADM, the device token equivalent is called the
    #   registration ID.
    #   @return [String]
    #
    # @!attribute [rw] custom_user_data
    #   Arbitrary user data to associate with the endpoint. Amazon SNS does
    #   not use this data. The data must be in UTF-8 format and less than
    #   2KB.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   For a list of attributes, see [SetEndpointAttributes][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html
    #   @return [Hash<String,String>]
    #
    class CreatePlatformEndpointInput < Struct.new(
      :platform_application_arn,
      :token,
      :custom_user_data,
      :attributes)
      include Aws::Structure
    end

    # Input for CreateTopic action.
    #
    # @note When making an API call, you may pass CreateTopicInput
    #   data as a hash:
    #
    #       {
    #         name: "topicName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the topic you want to create.
    #
    #   Constraints: Topic names must be made up of only uppercase and
    #   lowercase ASCII letters, numbers, underscores, and hyphens, and must
    #   be between 1 and 256 characters long.
    #   @return [String]
    #
    class CreateTopicInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # Response from CreateTopic action.
    #
    # @!attribute [rw] topic_arn
    #   The Amazon Resource Name (ARN) assigned to the created topic.
    #   @return [String]
    #
    class CreateTopicResponse < Struct.new(
      :topic_arn)
      include Aws::Structure
    end

    # Input for DeleteEndpoint action.
    #
    # @note When making an API call, you may pass DeleteEndpointInput
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   EndpointArn of endpoint to delete.
    #   @return [String]
    #
    class DeleteEndpointInput < Struct.new(
      :endpoint_arn)
      include Aws::Structure
    end

    # Input for DeletePlatformApplication action.
    #
    # @note When making an API call, you may pass DeletePlatformApplicationInput
    #   data as a hash:
    #
    #       {
    #         platform_application_arn: "String", # required
    #       }
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn of platform application object to delete.
    #   @return [String]
    #
    class DeletePlatformApplicationInput < Struct.new(
      :platform_application_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTopicInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic you want to delete.
    #   @return [String]
    #
    class DeleteTopicInput < Struct.new(
      :topic_arn)
      include Aws::Structure
    end

    # Endpoint for mobile app and device.
    #
    # @!attribute [rw] endpoint_arn
    #   EndpointArn for mobile app and device.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes for endpoint.
    #   @return [Hash<String,String>]
    #
    class Endpoint < Struct.new(
      :endpoint_arn,
      :attributes)
      include Aws::Structure
    end

    # Input for GetEndpointAttributes action.
    #
    # @note When making an API call, you may pass GetEndpointAttributesInput
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   EndpointArn for GetEndpointAttributes input.
    #   @return [String]
    #
    class GetEndpointAttributesInput < Struct.new(
      :endpoint_arn)
      include Aws::Structure
    end

    # Response from GetEndpointAttributes of the EndpointArn.
    #
    # @!attribute [rw] attributes
    #   Attributes include the following:
    #
    #   * `CustomUserData` -- arbitrary user data to associate with the
    #     endpoint. Amazon SNS does not use this data. The data must be in
    #     UTF-8 format and less than 2KB.
    #
    #   * `Enabled` -- flag that enables/disables delivery to the endpoint.
    #     Amazon SNS will set this to false when a notification service
    #     indicates to Amazon SNS that the endpoint is invalid. Users can
    #     set it back to true, typically after updating Token.
    #
    #   * `Token` -- device token, also referred to as a registration id,
    #     for an app and mobile device. This is returned from the
    #     notification service when an app and mobile device are registered
    #     with the notification service.
    #   @return [Hash<String,String>]
    #
    class GetEndpointAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Input for GetPlatformApplicationAttributes action.
    #
    # @note When making an API call, you may pass GetPlatformApplicationAttributesInput
    #   data as a hash:
    #
    #       {
    #         platform_application_arn: "String", # required
    #       }
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn for GetPlatformApplicationAttributesInput.
    #   @return [String]
    #
    class GetPlatformApplicationAttributesInput < Struct.new(
      :platform_application_arn)
      include Aws::Structure
    end

    # Response for GetPlatformApplicationAttributes action.
    #
    # @!attribute [rw] attributes
    #   Attributes include the following:
    #
    #   * `EventEndpointCreated` -- Topic ARN to which EndpointCreated event
    #     notifications should be sent.
    #
    #   * `EventEndpointDeleted` -- Topic ARN to which EndpointDeleted event
    #     notifications should be sent.
    #
    #   * `EventEndpointUpdated` -- Topic ARN to which EndpointUpdate event
    #     notifications should be sent.
    #
    #   * `EventDeliveryFailure` -- Topic ARN to which DeliveryFailure event
    #     notifications should be sent upon Direct Publish delivery failure
    #     (permanent) to one of the application's endpoints.
    #   @return [Hash<String,String>]
    #
    class GetPlatformApplicationAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # The input for the `GetSMSAttributes` request.
    #
    # @note When making an API call, you may pass GetSMSAttributesInput
    #   data as a hash:
    #
    #       {
    #         attributes: ["String"],
    #       }
    #
    # @!attribute [rw] attributes
    #   A list of the individual attribute names, such as
    #   `MonthlySpendLimit`, for which you want values.
    #
    #   For all attribute names, see [SetSMSAttributes][1].
    #
    #   If you don't use this parameter, Amazon SNS returns all SMS
    #   attributes.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html
    #   @return [Array<String>]
    #
    class GetSMSAttributesInput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # The response from the `GetSMSAttributes` request.
    #
    # @!attribute [rw] attributes
    #   The SMS attribute names and their values.
    #   @return [Hash<String,String>]
    #
    class GetSMSAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Input for GetSubscriptionAttributes.
    #
    # @note When making an API call, you may pass GetSubscriptionAttributesInput
    #   data as a hash:
    #
    #       {
    #         subscription_arn: "subscriptionARN", # required
    #       }
    #
    # @!attribute [rw] subscription_arn
    #   The ARN of the subscription whose properties you want to get.
    #   @return [String]
    #
    class GetSubscriptionAttributesInput < Struct.new(
      :subscription_arn)
      include Aws::Structure
    end

    # Response for GetSubscriptionAttributes action.
    #
    # @!attribute [rw] attributes
    #   A map of the subscription's attributes. Attributes in this map
    #   include the following:
    #
    #   * `SubscriptionArn` -- the subscription's ARN
    #
    #   * `TopicArn` -- the topic ARN that the subscription is associated
    #     with
    #
    #   * `Owner` -- the AWS account ID of the subscription's owner
    #
    #   * `ConfirmationWasAuthenticated` -- true if the subscription
    #     confirmation request was authenticated
    #
    #   * `DeliveryPolicy` -- the JSON serialization of the subscription's
    #     delivery policy
    #
    #   * `EffectiveDeliveryPolicy` -- the JSON serialization of the
    #     effective delivery policy that takes into account the topic
    #     delivery policy and account system defaults
    #   @return [Hash<String,String>]
    #
    class GetSubscriptionAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Input for GetTopicAttributes action.
    #
    # @note When making an API call, you may pass GetTopicAttributesInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic whose properties you want to get.
    #   @return [String]
    #
    class GetTopicAttributesInput < Struct.new(
      :topic_arn)
      include Aws::Structure
    end

    # Response for GetTopicAttributes action.
    #
    # @!attribute [rw] attributes
    #   A map of the topic's attributes. Attributes in this map include the
    #   following:
    #
    #   * `TopicArn` -- the topic's ARN
    #
    #   * `Owner` -- the AWS account ID of the topic's owner
    #
    #   * `Policy` -- the JSON serialization of the topic's access control
    #     policy
    #
    #   * `DisplayName` -- the human-readable name used in the "From"
    #     field for notifications to email and email-json endpoints
    #
    #   * `SubscriptionsPending` -- the number of subscriptions pending
    #     confirmation on this topic
    #
    #   * `SubscriptionsConfirmed` -- the number of confirmed subscriptions
    #     on this topic
    #
    #   * `SubscriptionsDeleted` -- the number of deleted subscriptions on
    #     this topic
    #
    #   * `DeliveryPolicy` -- the JSON serialization of the topic's
    #     delivery policy
    #
    #   * `EffectiveDeliveryPolicy` -- the JSON serialization of the
    #     effective delivery policy that takes into account system defaults
    #   @return [Hash<String,String>]
    #
    class GetTopicAttributesResponse < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # Input for ListEndpointsByPlatformApplication action.
    #
    # @note When making an API call, you may pass ListEndpointsByPlatformApplicationInput
    #   data as a hash:
    #
    #       {
    #         platform_application_arn: "String", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn for ListEndpointsByPlatformApplicationInput
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   NextToken string is used when calling
    #   ListEndpointsByPlatformApplication action to retrieve additional
    #   records that are available after the first page results.
    #   @return [String]
    #
    class ListEndpointsByPlatformApplicationInput < Struct.new(
      :platform_application_arn,
      :next_token)
      include Aws::Structure
    end

    # Response for ListEndpointsByPlatformApplication action.
    #
    # @!attribute [rw] endpoints
    #   Endpoints returned for ListEndpointsByPlatformApplication action.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   NextToken string is returned when calling
    #   ListEndpointsByPlatformApplication action if additional records are
    #   available after the first page results.
    #   @return [String]
    #
    class ListEndpointsByPlatformApplicationResponse < Struct.new(
      :endpoints,
      :next_token)
      include Aws::Structure
    end

    # The input for the `ListPhoneNumbersOptedOut` action.
    #
    # @note When making an API call, you may pass ListPhoneNumbersOptedOutInput
    #   data as a hash:
    #
    #       {
    #         next_token: "string",
    #       }
    #
    # @!attribute [rw] next_token
    #   A `NextToken` string is used when you call the
    #   `ListPhoneNumbersOptedOut` action to retrieve additional records
    #   that are available after the first page of results.
    #   @return [String]
    #
    class ListPhoneNumbersOptedOutInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # The response from the `ListPhoneNumbersOptedOut` action.
    #
    # @!attribute [rw] phone_numbers
    #   A list of phone numbers that are opted out of receiving SMS
    #   messages. The list is paginated, and each page can contain up to 100
    #   phone numbers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A `NextToken` string is returned when you call the
    #   `ListPhoneNumbersOptedOut` action if additional records are
    #   available after the first page of results.
    #   @return [String]
    #
    class ListPhoneNumbersOptedOutResponse < Struct.new(
      :phone_numbers,
      :next_token)
      include Aws::Structure
    end

    # Input for ListPlatformApplications action.
    #
    # @note When making an API call, you may pass ListPlatformApplicationsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] next_token
    #   NextToken string is used when calling ListPlatformApplications
    #   action to retrieve additional records that are available after the
    #   first page results.
    #   @return [String]
    #
    class ListPlatformApplicationsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Response for ListPlatformApplications action.
    #
    # @!attribute [rw] platform_applications
    #   Platform applications returned when calling ListPlatformApplications
    #   action.
    #   @return [Array<Types::PlatformApplication>]
    #
    # @!attribute [rw] next_token
    #   NextToken string is returned when calling ListPlatformApplications
    #   action if additional records are available after the first page
    #   results.
    #   @return [String]
    #
    class ListPlatformApplicationsResponse < Struct.new(
      :platform_applications,
      :next_token)
      include Aws::Structure
    end

    # Input for ListSubscriptionsByTopic action.
    #
    # @note When making an API call, you may pass ListSubscriptionsByTopicInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         next_token: "nextToken",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic for which you wish to find subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token returned by the previous `ListSubscriptionsByTopic` request.
    #   @return [String]
    #
    class ListSubscriptionsByTopicInput < Struct.new(
      :topic_arn,
      :next_token)
      include Aws::Structure
    end

    # Response for ListSubscriptionsByTopic action.
    #
    # @!attribute [rw] subscriptions
    #   A list of subscriptions.
    #   @return [Array<Types::Subscription>]
    #
    # @!attribute [rw] next_token
    #   Token to pass along to the next `ListSubscriptionsByTopic` request.
    #   This element is returned if there are more subscriptions to
    #   retrieve.
    #   @return [String]
    #
    class ListSubscriptionsByTopicResponse < Struct.new(
      :subscriptions,
      :next_token)
      include Aws::Structure
    end

    # Input for ListSubscriptions action.
    #
    # @note When making an API call, you may pass ListSubscriptionsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "nextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   Token returned by the previous `ListSubscriptions` request.
    #   @return [String]
    #
    class ListSubscriptionsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Response for ListSubscriptions action
    #
    # @!attribute [rw] subscriptions
    #   A list of subscriptions.
    #   @return [Array<Types::Subscription>]
    #
    # @!attribute [rw] next_token
    #   Token to pass along to the next `ListSubscriptions` request. This
    #   element is returned if there are more subscriptions to retrieve.
    #   @return [String]
    #
    class ListSubscriptionsResponse < Struct.new(
      :subscriptions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTopicsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "nextToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   Token returned by the previous `ListTopics` request.
    #   @return [String]
    #
    class ListTopicsInput < Struct.new(
      :next_token)
      include Aws::Structure
    end

    # Response for ListTopics action.
    #
    # @!attribute [rw] topics
    #   A list of topic ARNs.
    #   @return [Array<Types::Topic>]
    #
    # @!attribute [rw] next_token
    #   Token to pass along to the next `ListTopics` request. This element
    #   is returned if there are additional topics to retrieve.
    #   @return [String]
    #
    class ListTopicsResponse < Struct.new(
      :topics,
      :next_token)
      include Aws::Structure
    end

    # The user-specified message attribute value. For string data types, the
    # value attribute has the same restrictions on the content as the
    # message body. For more information, see [Publish][1].
    #
    # Name, type, and value must not be empty or null. In addition, the
    # message body should not be empty or null. All parts of the message
    # attribute, including name, type, and value, are included in the
    # message size restriction, which is currently 256 KB (262,144 bytes).
    # For more information, see [Using Amazon SNS Message Attributes][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sns/latest/api/API_Publish.html
    # [2]: http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html
    #
    # @note When making an API call, you may pass MessageAttributeValue
    #   data as a hash:
    #
    #       {
    #         data_type: "String", # required
    #         string_value: "String",
    #         binary_value: "data",
    #       }
    #
    # @!attribute [rw] data_type
    #   Amazon SNS supports the following logical data types: String,
    #   Number, and Binary. For more information, see [Message Attribute
    #   Data Types][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes
    #   @return [String]
    #
    # @!attribute [rw] string_value
    #   Strings are Unicode with UTF8 binary encoding. For a list of code
    #   values, see
    #   [http://en.wikipedia.org/wiki/ASCII#ASCII\_printable\_characters][1].
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
    #   @return [String]
    #
    # @!attribute [rw] binary_value
    #   Binary type attributes can store any binary data, for example,
    #   compressed data, encrypted data, or images.
    #   @return [String]
    #
    class MessageAttributeValue < Struct.new(
      :data_type,
      :string_value,
      :binary_value)
      include Aws::Structure
    end

    # Input for the OptInPhoneNumber action.
    #
    # @note When making an API call, you may pass OptInPhoneNumberInput
    #   data as a hash:
    #
    #       {
    #         phone_number: "PhoneNumber", # required
    #       }
    #
    # @!attribute [rw] phone_number
    #   The phone number to opt in.
    #   @return [String]
    #
    class OptInPhoneNumberInput < Struct.new(
      :phone_number)
      include Aws::Structure
    end

    # The response for the OptInPhoneNumber action.
    #
    class OptInPhoneNumberResponse < Aws::EmptyStructure; end

    # Platform application object.
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn for platform application object.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Attributes for platform application object.
    #   @return [Hash<String,String>]
    #
    class PlatformApplication < Struct.new(
      :platform_application_arn,
      :attributes)
      include Aws::Structure
    end

    # Input for Publish action.
    #
    # @note When making an API call, you may pass PublishInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN",
    #         target_arn: "String",
    #         phone_number: "String",
    #         message: "message", # required
    #         subject: "subject",
    #         message_structure: "messageStructure",
    #         message_attributes: {
    #           "String" => {
    #             data_type: "String", # required
    #             string_value: "String",
    #             binary_value: "data",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The topic you want to publish to.
    #
    #   If you don't specify a value for the `TopicArn` parameter, you must
    #   specify a value for the `PhoneNumber` or `TargetArn` parameters.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   Either TopicArn or EndpointArn, but not both.
    #
    #   If you don't specify a value for the `TargetArn` parameter, you
    #   must specify a value for the `PhoneNumber` or `TopicArn` parameters.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number to which you want to deliver an SMS message. Use
    #   E.164 format.
    #
    #   If you don't specify a value for the `PhoneNumber` parameter, you
    #   must specify a value for the `TargetArn` or `TopicArn` parameters.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message you want to send to the topic.
    #
    #   If you want to send the same message to all transport protocols,
    #   include the text of the message as a String value.
    #
    #   If you want to send different messages for each transport protocol,
    #   set the value of the `MessageStructure` parameter to `json` and use
    #   a JSON object for the `Message` parameter.
    #
    #   Constraints: Messages must be UTF-8 encoded strings at most 256 KB
    #   in size (262144 bytes, not 262144 characters).
    #
    #   JSON-specific constraints:
    #
    #   * Keys in the JSON object that correspond to supported transport
    #     protocols must have simple JSON string values.
    #
    #   * The values will be parsed (unescaped) before they are used in
    #     outgoing messages.
    #
    #   * Outbound notifications are JSON encoded (meaning that the
    #     characters will be reescaped for sending).
    #
    #   * Values have a minimum length of 0 (the empty string, "", is
    #     allowed).
    #
    #   * Values have a maximum length bounded by the overall message size
    #     (so, including multiple protocols may limit message sizes).
    #
    #   * Non-string values will cause the key to be ignored.
    #
    #   * Keys that do not correspond to supported transport protocols are
    #     ignored.
    #
    #   * Duplicate keys are not allowed.
    #
    #   * Failure to parse or validate any key or value in the message will
    #     cause the `Publish` call to return an error (no partial delivery).
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   Optional parameter to be used as the "Subject" line when the
    #   message is delivered to email endpoints. This field will also be
    #   included, if present, in the standard JSON messages delivered to
    #   other endpoints.
    #
    #   Constraints: Subjects must be ASCII text that begins with a letter,
    #   number, or punctuation mark; must not include line breaks or control
    #   characters; and must be less than 100 characters long.
    #   @return [String]
    #
    # @!attribute [rw] message_structure
    #   Set `MessageStructure` to `json` if you want to send a different
    #   message for each protocol. For example, using one publish action,
    #   you can send a short message to your SMS subscribers and a longer
    #   message to your email subscribers. If you set `MessageStructure` to
    #   `json`, the value of the `Message` parameter must:
    #
    #   * be a syntactically valid JSON object; and
    #
    #   * contain at least a top-level JSON key of "default" with a value
    #     that is a string.
    #
    #   You can define other top-level keys that define the message you want
    #   to send to a specific transport protocol (e.g., "http").
    #
    #   For information about sending different messages for each protocol
    #   using the AWS Management Console, go to [Create Different Messages
    #   for Each Protocol][1] in the *Amazon Simple Notification Service
    #   Getting Started Guide*.
    #
    #   Valid value: `json`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol
    #   @return [String]
    #
    # @!attribute [rw] message_attributes
    #   Message attributes for Publish action.
    #   @return [Hash<String,Types::MessageAttributeValue>]
    #
    class PublishInput < Struct.new(
      :topic_arn,
      :target_arn,
      :phone_number,
      :message,
      :subject,
      :message_structure,
      :message_attributes)
      include Aws::Structure
    end

    # Response for Publish action.
    #
    # @!attribute [rw] message_id
    #   Unique identifier assigned to the published message.
    #
    #   Length Constraint: Maximum 100 characters
    #   @return [String]
    #
    class PublishResponse < Struct.new(
      :message_id)
      include Aws::Structure
    end

    # Input for RemovePermission action.
    #
    # @note When making an API call, you may pass RemovePermissionInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         label: "label", # required
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic whose access control policy you wish to modify.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The unique label of the statement you want to remove.
    #   @return [String]
    #
    class RemovePermissionInput < Struct.new(
      :topic_arn,
      :label)
      include Aws::Structure
    end

    # Input for SetEndpointAttributes action.
    #
    # @note When making an API call, you may pass SetEndpointAttributesInput
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #         attributes: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   EndpointArn used for SetEndpointAttributes action.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of the endpoint attributes. Attributes in this map include the
    #   following:
    #
    #   * `CustomUserData` -- arbitrary user data to associate with the
    #     endpoint. Amazon SNS does not use this data. The data must be in
    #     UTF-8 format and less than 2KB.
    #
    #   * `Enabled` -- flag that enables/disables delivery to the endpoint.
    #     Amazon SNS will set this to false when a notification service
    #     indicates to Amazon SNS that the endpoint is invalid. Users can
    #     set it back to true, typically after updating Token.
    #
    #   * `Token` -- device token, also referred to as a registration id,
    #     for an app and mobile device. This is returned from the
    #     notification service when an app and mobile device are registered
    #     with the notification service.
    #   @return [Hash<String,String>]
    #
    class SetEndpointAttributesInput < Struct.new(
      :endpoint_arn,
      :attributes)
      include Aws::Structure
    end

    # Input for SetPlatformApplicationAttributes action.
    #
    # @note When making an API call, you may pass SetPlatformApplicationAttributesInput
    #   data as a hash:
    #
    #       {
    #         platform_application_arn: "String", # required
    #         attributes: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] platform_application_arn
    #   PlatformApplicationArn for SetPlatformApplicationAttributes action.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A map of the platform application attributes. Attributes in this map
    #   include the following:
    #
    #   * `PlatformCredential` -- The credential received from the
    #     notification service. For APNS/APNS\_SANDBOX, PlatformCredential
    #     is private key. For GCM, PlatformCredential is "API key". For
    #     ADM, PlatformCredential is "client secret".
    #
    #   * `PlatformPrincipal` -- The principal received from the
    #     notification service. For APNS/APNS\_SANDBOX, PlatformPrincipal is
    #     SSL certificate. For GCM, PlatformPrincipal is not applicable. For
    #     ADM, PlatformPrincipal is "client id".
    #
    #   * `EventEndpointCreated` -- Topic ARN to which EndpointCreated event
    #     notifications should be sent.
    #
    #   * `EventEndpointDeleted` -- Topic ARN to which EndpointDeleted event
    #     notifications should be sent.
    #
    #   * `EventEndpointUpdated` -- Topic ARN to which EndpointUpdate event
    #     notifications should be sent.
    #
    #   * `EventDeliveryFailure` -- Topic ARN to which DeliveryFailure event
    #     notifications should be sent upon Direct Publish delivery failure
    #     (permanent) to one of the application's endpoints.
    #
    #   * `SuccessFeedbackRoleArn` -- IAM role ARN used to give Amazon SNS
    #     write access to use CloudWatch Logs on your behalf.
    #
    #   * `FailureFeedbackRoleArn` -- IAM role ARN used to give Amazon SNS
    #     write access to use CloudWatch Logs on your behalf.
    #
    #   * `SuccessFeedbackSampleRate` -- Sample rate percentage (0-100) of
    #     successfully delivered messages.
    #   @return [Hash<String,String>]
    #
    class SetPlatformApplicationAttributesInput < Struct.new(
      :platform_application_arn,
      :attributes)
      include Aws::Structure
    end

    # The input for the SetSMSAttributes action.
    #
    # @note When making an API call, you may pass SetSMSAttributesInput
    #   data as a hash:
    #
    #       {
    #         attributes: { # required
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   The default settings for sending SMS messages from your account. You
    #   can set values for the following attribute names:
    #
    #   `MonthlySpendLimit` – The maximum amount in USD that you are willing
    #   to spend each month to send SMS messages. When Amazon SNS determines
    #   that sending an SMS message would incur a cost that exceeds this
    #   limit, it stops sending SMS messages within minutes.
    #
    #   Amazon SNS stops sending SMS messages within minutes of the limit
    #   being crossed. During that interval, if you continue to send SMS
    #   messages, you will incur costs that exceed your limit.
    #
    #   By default, the spend limit is set to the maximum allowed by Amazon
    #   SNS. If you want to exceed the maximum, contact [AWS Support][1] or
    #   your AWS sales representative for a service limit increase.
    #
    #   `DeliveryStatusIAMRole` – The ARN of the IAM role that allows Amazon
    #   SNS to write logs about SMS deliveries in CloudWatch Logs. For each
    #   SMS message that you send, Amazon SNS writes a log that includes the
    #   message price, the success or failure status, the reason for failure
    #   (if the message failed), the message dwell time, and other
    #   information.
    #
    #   `DeliveryStatusSuccessSamplingRate` – The percentage of successful
    #   SMS deliveries for which Amazon SNS will write logs in CloudWatch
    #   Logs. The value can be an integer from 0 - 100. For example, to
    #   write logs only for failed deliveries, set this value to `0`. To
    #   write logs for 10% of your successful deliveries, set it to `10`.
    #
    #   `DefaultSenderID` – A string, such as your business brand, that is
    #   displayed as the sender on the receiving device. Support for sender
    #   IDs varies by country. The sender ID can be 1 - 11 alphanumeric
    #   characters, and it must contain at least one letter.
    #
    #   `DefaultSMSType` – The type of SMS message that you will send by
    #   default. You can assign the following values:
    #
    #   * `Promotional` – (Default) Noncritical messages, such as marketing
    #     messages. Amazon SNS optimizes the message delivery to incur the
    #     lowest cost.
    #
    #   * `Transactional` – Critical messages that support customer
    #     transactions, such as one-time passcodes for multi-factor
    #     authentication. Amazon SNS optimizes the message delivery to
    #     achieve the highest reliability.
    #
    #   `UsageReportS3Bucket` – The name of the Amazon S3 bucket to receive
    #   daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will
    #   deliver a usage report as a CSV file to the bucket. The report
    #   includes the following information for each SMS message that was
    #   successfully delivered by your account:
    #
    #   * Time that the message was published (in UTC)
    #
    #   * Message ID
    #
    #   * Destination phone number
    #
    #   * Message type
    #
    #   * Delivery status
    #
    #   * Message price (in USD)
    #
    #   * Part number (a message is split into multiple parts if it is too
    #     long for a single message)
    #
    #   * Total number of parts
    #
    #   To receive the report, the bucket must have a policy that allows the
    #   Amazon SNS service principle to perform the `s3:PutObject` and
    #   `s3:GetBucketLocation` actions.
    #
    #   For an example bucket policy and usage report, see [Monitoring SMS
    #   Activity][2] in the *Amazon SNS Developer Guide*.
    #
    #
    #
    #   [1]: https://aws.amazon.com/premiumsupport/
    #   [2]: http://docs.aws.amazon.com/sns/latest/dg/sms_stats.html
    #   @return [Hash<String,String>]
    #
    class SetSMSAttributesInput < Struct.new(
      :attributes)
      include Aws::Structure
    end

    # The response for the SetSMSAttributes action.
    #
    class SetSMSAttributesResponse < Aws::EmptyStructure; end

    # Input for SetSubscriptionAttributes action.
    #
    # @note When making an API call, you may pass SetSubscriptionAttributesInput
    #   data as a hash:
    #
    #       {
    #         subscription_arn: "subscriptionARN", # required
    #         attribute_name: "attributeName", # required
    #         attribute_value: "attributeValue",
    #       }
    #
    # @!attribute [rw] subscription_arn
    #   The ARN of the subscription to modify.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute you want to set. Only a subset of the
    #   subscriptions attributes are mutable.
    #
    #   Valid values: `DeliveryPolicy` \| `RawMessageDelivery`
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The new value for the attribute in JSON format.
    #   @return [String]
    #
    class SetSubscriptionAttributesInput < Struct.new(
      :subscription_arn,
      :attribute_name,
      :attribute_value)
      include Aws::Structure
    end

    # Input for SetTopicAttributes action.
    #
    # @note When making an API call, you may pass SetTopicAttributesInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         attribute_name: "attributeName", # required
    #         attribute_value: "attributeValue",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic to modify.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute you want to set. Only a subset of the
    #   topic's attributes are mutable.
    #
    #   Valid values: `Policy` \| `DisplayName` \| `DeliveryPolicy`
    #   @return [String]
    #
    # @!attribute [rw] attribute_value
    #   The new value for the attribute.
    #   @return [String]
    #
    class SetTopicAttributesInput < Struct.new(
      :topic_arn,
      :attribute_name,
      :attribute_value)
      include Aws::Structure
    end

    # Input for Subscribe action.
    #
    # @note When making an API call, you may pass SubscribeInput
    #   data as a hash:
    #
    #       {
    #         topic_arn: "topicARN", # required
    #         protocol: "protocol", # required
    #         endpoint: "endpoint",
    #       }
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the topic you want to subscribe to.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol you want to use. Supported protocols include:
    #
    #   * `http` -- delivery of JSON-encoded message via HTTP POST
    #
    #   * `https` -- delivery of JSON-encoded message via HTTPS POST
    #
    #   * `email` -- delivery of message via SMTP
    #
    #   * `email-json` -- delivery of JSON-encoded message via SMTP
    #
    #   * `sms` -- delivery of message via SMS
    #
    #   * `sqs` -- delivery of JSON-encoded message to an Amazon SQS queue
    #
    #   * `application` -- delivery of JSON-encoded message to an
    #     EndpointArn for a mobile app and device.
    #
    #   * `lambda` -- delivery of JSON-encoded message to an AWS Lambda
    #     function.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint that you want to receive notifications. Endpoints vary
    #   by protocol:
    #
    #   * For the `http` protocol, the endpoint is an URL beginning with
    #     "http://"
    #
    #   * For the `https` protocol, the endpoint is a URL beginning with
    #     "https://"
    #
    #   * For the `email` protocol, the endpoint is an email address
    #
    #   * For the `email-json` protocol, the endpoint is an email address
    #
    #   * For the `sms` protocol, the endpoint is a phone number of an
    #     SMS-enabled device
    #
    #   * For the `sqs` protocol, the endpoint is the ARN of an Amazon SQS
    #     queue
    #
    #   * For the `application` protocol, the endpoint is the EndpointArn of
    #     a mobile app and device.
    #
    #   * For the `lambda` protocol, the endpoint is the ARN of an AWS
    #     Lambda function.
    #   @return [String]
    #
    class SubscribeInput < Struct.new(
      :topic_arn,
      :protocol,
      :endpoint)
      include Aws::Structure
    end

    # Response for Subscribe action.
    #
    # @!attribute [rw] subscription_arn
    #   The ARN of the subscription, if the service was able to create a
    #   subscription immediately (without requiring endpoint owner
    #   confirmation).
    #   @return [String]
    #
    class SubscribeResponse < Struct.new(
      :subscription_arn)
      include Aws::Structure
    end

    # A wrapper type for the attributes of an Amazon SNS subscription.
    #
    # @!attribute [rw] subscription_arn
    #   The subscription's ARN.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The subscription's owner.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The subscription's protocol.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The subscription's endpoint (format depends on the protocol).
    #   @return [String]
    #
    # @!attribute [rw] topic_arn
    #   The ARN of the subscription's topic.
    #   @return [String]
    #
    class Subscription < Struct.new(
      :subscription_arn,
      :owner,
      :protocol,
      :endpoint,
      :topic_arn)
      include Aws::Structure
    end

    # A wrapper type for the topic's Amazon Resource Name (ARN). To
    # retrieve a topic's attributes, use `GetTopicAttributes`.
    #
    # @!attribute [rw] topic_arn
    #   The topic's ARN.
    #   @return [String]
    #
    class Topic < Struct.new(
      :topic_arn)
      include Aws::Structure
    end

    # Input for Unsubscribe action.
    #
    # @note When making an API call, you may pass UnsubscribeInput
    #   data as a hash:
    #
    #       {
    #         subscription_arn: "subscriptionARN", # required
    #       }
    #
    # @!attribute [rw] subscription_arn
    #   The ARN of the subscription to be deleted.
    #   @return [String]
    #
    class UnsubscribeInput < Struct.new(
      :subscription_arn)
      include Aws::Structure
    end

  end
end
