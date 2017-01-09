# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Route53
  module Types

    # A complex type that identifies the CloudWatch alarm that you want
    # Amazon Route 53 health checkers to use to determine whether this
    # health check is healthy.
    #
    # @note When making an API call, you may pass AlarmIdentifier
    #   data as a hash:
    #
    #       {
    #         region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #         name: "AlarmName", # required
    #       }
    #
    # @!attribute [rw] region
    #   A complex type that identifies the CloudWatch alarm that you want
    #   Amazon Route 53 health checkers to use to determine whether this
    #   health check is healthy.
    #
    #   For the current list of CloudWatch regions, see [Amazon
    #   CloudWatch][1] in *AWS Regions and Endpoints* in the *Amazon Web
    #   Services General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the CloudWatch alarm that you want Amazon Route 53
    #   health checkers to use to determine whether this health check is
    #   healthy.
    #   @return [String]
    #
    class AlarmIdentifier < Struct.new(
      :region,
      :name)
      include Aws::Structure
    end

    # *Alias resource record sets only:* Information about the CloudFront
    # distribution, Elastic Beanstalk environment, ELB load balancer, Amazon
    # S3 bucket, or Amazon Route 53 resource record set that you're
    # redirecting queries to. The Elastic Beanstalk environment must have a
    # regionalized subdomain.
    #
    # When creating resource record sets for a private hosted zone, note the
    # following:
    #
    # * Resource record sets can't be created for CloudFront distributions
    #   in a private hosted zone.
    #
    # * Creating geolocation alias resource record sets or latency alias
    #   resource record sets in a private hosted zone is unsupported.
    #
    # * For information about creating failover resource record sets in a
    #   private hosted zone, see [Configuring Failover in a Private Hosted
    #   Zone][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html
    #
    # @note When making an API call, you may pass AliasTarget
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         dns_name: "DNSName", # required
    #         evaluate_target_health: false, # required
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   *Alias resource records sets only*\: The value used depends on where
    #   the queries are routed:
    #
    #   A CloudFront distribution
    #
    #   : Specify `Z2FDTNDATAQYW2`.
    #
    #     <note markdown="1"> Alias resource record sets for CloudFront can't be created in a
    #     private zone.
    #
    #      </note>
    #
    #   Elastic Beanstalk environment
    #
    #   : Specify the hosted zone ID for the region in which you created the
    #     environment. The environment must have a regionalized subdomain.
    #     For a list of regions and the corresponding hosted zone IDs, see
    #     [AWS Elastic Beanstalk][1] in the Regions and Endpoints chapter of
    #     the *Amazon Web Services General Reference*.
    #
    #   ELB load balancer
    #
    #   : Specify the value of the hosted zone ID for the load balancer. Use
    #     the following methods to get the hosted zone ID:
    #
    #     * AWS Management Console: Go to the Amazon EC2 page, click **Load
    #       Balancers** in the navigation pane, select the load balancer,
    #       and get the value of the **Hosted Zone ID** field on the
    #       **Description** tab. Use the same process to get the value of
    #       **DNS Name**. See HostedZone$Name.
    #
    #     * Elastic Load Balancing API: Use `DescribeLoadBalancers` to get
    #       the value of `CanonicalHostedZoneNameID`. Use the same process
    #       to get the `CanonicalHostedZoneName`. See HostedZone$Name.
    #
    #     * AWS CLI: Use ` describe-load-balancers ` to get the value of
    #       `CanonicalHostedZoneNameID`. Use the same process to get the
    #       `CanonicalHostedZoneName`. See HostedZone$Name.
    #
    #   An Amazon S3 bucket configured as a static website
    #
    #   : Specify the hosted zone ID for the Amazon S3 website endpoint in
    #     which you created the bucket. For more information about valid
    #     values, see the table [ Amazon S3 (S3) Website Endpoints][2] in
    #     the *Amazon Web Services General Reference*.
    #
    #   Another Amazon Route 53 resource record set in your hosted zone
    #
    #   : Specify the hosted zone ID of your hosted zone. (An alias resource
    #     record set can't reference a resource record set in a different
    #     hosted zone.)
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   *Alias resource record sets only:* The value that you specify
    #   depends on where you want to route queries:
    #
    #   * **A CloudFront distribution:** Specify the domain name that
    #     CloudFront assigned when you created your distribution.
    #
    #     Your CloudFront distribution must include an alternate domain name
    #     that matches the name of the resource record set. For example, if
    #     the name of the resource record set is *acme.example.com*, your
    #     CloudFront distribution must include *acme.example.com* as one of
    #     the alternate domain names. For more information, see [Using
    #     Alternate Domain Names (CNAMEs)][1] in the *Amazon CloudFront
    #     Developer Guide*.
    #
    #   * **Elastic Beanstalk environment**\: Specify the `CNAME` attribute
    #     for the environment. (The environment must have a regionalized
    #     domain name.) You can use the following methods to get the value
    #     of the CNAME attribute:
    #
    #     * *AWS Managment Console*\: For information about how to get the
    #       value by using the console, see [Using Custom Domains with AWS
    #       Elastic Beanstalk][2] in the *AWS Elastic Beanstalk Developer
    #       Guide*.
    #
    #     * *Elastic Load Balancing API*\: Use the `DescribeEnvironments`
    #       action to get the value of the `CNAME` attribute. For more
    #       information, see [DescribeEnvironments][3] in the *AWS Elastic
    #       Beanstalk API Reference*.
    #
    #     * *AWS CLI*\: Use the describe-environments command to get the
    #       value of the `CNAME` attribute. For more information, see
    #       [describe-environments][4] in the *AWS Command Line Interface
    #       Reference*.
    #
    #   * **An ELB load balancer:** Specify the DNS name associated with the
    #     load balancer. Get the DNS name by using the AWS Management
    #     Console, the ELB API, or the AWS CLI. Use the same method to get
    #     values for `HostedZoneId` and `DNSName`. If you get one value from
    #     the console and the other value from the API or the CLI, creating
    #     the resource record set will fail.
    #
    #     * *AWS Management Console*\: Go to the EC2 page, click **Load
    #       Balancers** in the navigation pane, choose the load balancer,
    #       choose the **Description** tab, and get the value of the **DNS
    #       Name** field that begins with dualstack. Use the same process to
    #       get the **Hosted Zone ID**. See HostedZone$Id.
    #
    #     * *Elastic Load Balancing API*\: Use ` DescribeLoadBalancers ` to
    #       get the value of `CanonicalHostedZoneName`. Use the same process
    #       to get the `CanonicalHostedZoneNameId`. See HostedZone$Id.
    #
    #     * *AWS CLI*\: Use ` describe-load-balancers ` to get the value of
    #       `CanonicalHostedZoneName`. Use the same process to get the
    #       `CanonicalHostedZoneNameId`. See HostedZoneId.
    #
    #   * **An Amazon S3 bucket that is configured as a static website:**
    #     Specify the domain name of the Amazon S3 website endpoint in which
    #     you created the bucket; for example,
    #     `s3-website-us-east-1.amazonaws.com`. For more information about
    #     valid values, see the table [Amazon Simple Storage Service (S3)
    #     Website Endpoints][5] in the *Amazon Web Services General
    #     Reference*. For more information about using S3 buckets for
    #     websites, see [Hosting a Static Website on Amazon S3][6] in the
    #     *Amazon S3 Developer Guide.*
    #
    #   * **Another Amazon Route 53 resource record set**\: Specify the
    #     value of the `Name` element for a resource record set in the
    #     current hosted zone.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html
    #   [2]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/customdomains.html
    #   [3]: http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/API_DescribeEnvironments.html
    #   [4]: http://docs.aws.amazon.com/cli/latest/reference/elasticbeanstalk/describe-environments.html
    #   [5]: http://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region
    #   [6]: http://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
    #   @return [String]
    #
    # @!attribute [rw] evaluate_target_health
    #   *Applies only to alias, weighted alias, latency alias, and failover
    #   alias record sets:* If you set the value of `EvaluateTargetHealth`
    #   to `true` for the resource record set or sets in an alias, weighted
    #   alias, latency alias, or failover alias resource record set, and if
    #   you specify a value for ` HealthCheck$Id ` for every resource record
    #   set that is referenced by these alias resource record sets, the
    #   alias resource record sets inherit the health of the referenced
    #   resource record sets.
    #
    #   In this configuration, when Amazon Route 53 receives a DNS query for
    #   an alias resource record set:
    #
    #   * Amazon Route 53 looks at the resource record sets that are
    #     referenced by the alias resource record sets to determine which
    #     health checks they're using.
    #
    #   * Amazon Route 53 checks the current status of each health check.
    #     (Amazon Route 53 periodically checks the health of the endpoint
    #     that is specified in a health check; it doesn't perform the
    #     health check when the DNS query arrives.)
    #
    #   * Based on the status of the health checks, Amazon Route 53
    #     determines which resource record sets are healthy. Unhealthy
    #     resource record sets are immediately removed from consideration.
    #     In addition, if all of the resource record sets that are
    #     referenced by an alias resource record set are unhealthy, that
    #     alias resource record set also is immediately removed from
    #     consideration.
    #
    #   * Based on the configuration of the alias resource record sets
    #     (weighted alias or latency alias, for example) and the
    #     configuration of the resource record sets that they reference,
    #     Amazon Route 53 chooses a resource record set from the healthy
    #     resource record sets, and responds to the query.
    #
    #   Note the following:
    #
    #   * You can't set `EvaluateTargetHealth` to `true` when the alias
    #     target is a CloudFront distribution.
    #
    #   * If the AWS resource that you specify in `AliasTarget` is a
    #     resource record set or a group of resource record sets (for
    #     example, a group of weighted resource record sets), but it is not
    #     another alias resource record set, we recommend that you associate
    #     a health check with all of the resource record sets in the alias
    #     target.For more information, see [What Happens When You Omit
    #     Health Checks?][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   * If you specify an Elastic Beanstalk environment in `HostedZoneId`
    #     and `DNSName`, and if the environment contains an ELB load
    #     balancer, Elastic Load Balancing routes queries only to the
    #     healthy Amazon EC2 instances that are registered with the load
    #     balancer. (An environment automatically contains an ELB load
    #     balancer if it includes more than one EC2 instance.) If you set
    #     `EvaluateTargetHealth` to `true` and either no EC2 instances are
    #     healthy or the load balancer itself is unhealthy, Amazon Route 53
    #     routes queries to other available resources that are healthy, if
    #     any.
    #
    #     If the environment contains a single EC2 instance, there are no
    #     special requirements.
    #
    #   * If you specify an ELB load balancer in ` AliasTarget `, Elastic
    #     Load Balancing routes queries only to the healthy EC2 instances
    #     that are registered with the load balancer. If no EC2 instances
    #     are healthy or if the load balancer itself is unhealthy, and if
    #     `EvaluateTargetHealth` is true for the corresponding alias
    #     resource record set, Amazon Route 53 routes queries to other
    #     resources. When you create a load balancer, you configure settings
    #     for Elastic Load Balancing health checks; they're not Amazon
    #     Route 53 health checks, but they perform a similar function. Do
    #     not create Amazon Route 53 health checks for the EC2 instances
    #     that you register with an ELB load balancer.
    #
    #     For more information, see [How Health Checks Work in More Complex
    #     Amazon Route 53 Configurations][2] in the *Amazon Route 53
    #     Developers Guide*.
    #
    #   * We recommend that you set `EvaluateTargetHealth` to true only when
    #     you have enough idle capacity to handle the failure of one or more
    #     endpoints.
    #
    #   For more information and examples, see [Amazon Route 53 Health
    #   Checks and DNS Failover][3] in the *Amazon Route 53 Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html#dns-failover-complex-configs-hc-omitting
    #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-complex-configs.html
    #   [3]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #   @return [Boolean]
    #
    class AliasTarget < Struct.new(
      :hosted_zone_id,
      :dns_name,
      :evaluate_target_health)
      include Aws::Structure
    end

    # A complex type that contains information about the request to
    # associate a VPC with a private hosted zone.
    #
    # @note When making an API call, you may pass AssociateVPCWithHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         vpc: { # required
    #           vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #           vpc_id: "VPCId",
    #         },
    #         comment: "AssociateVPCComment",
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the private hosted zone that you want to associate an
    #   Amazon VPC with.
    #
    #   Note that you can't associate a VPC with a hosted zone that
    #   doesn't have an existing VPC association.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   A complex type that contains information about the VPC that you want
    #   to associate with a private hosted zone.
    #   @return [Types::VPC]
    #
    # @!attribute [rw] comment
    #   *Optional:* A comment about the association request.
    #   @return [String]
    #
    class AssociateVPCWithHostedZoneRequest < Struct.new(
      :hosted_zone_id,
      :vpc,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # `AssociateVPCWithHostedZone` request.
    #
    # @!attribute [rw] change_info
    #   A complex type that describes the changes made to your hosted zone.
    #   @return [Types::ChangeInfo]
    #
    class AssociateVPCWithHostedZoneResponse < Struct.new(
      :change_info)
      include Aws::Structure
    end

    # The information for each resource record set that you want to change.
    #
    # @note When making an API call, you may pass Change
    #   data as a hash:
    #
    #       {
    #         action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
    #         resource_record_set: { # required
    #           name: "DNSName", # required
    #           type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #           set_identifier: "ResourceRecordSetIdentifier",
    #           weight: 1,
    #           region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
    #           geo_location: {
    #             continent_code: "GeoLocationContinentCode",
    #             country_code: "GeoLocationCountryCode",
    #             subdivision_code: "GeoLocationSubdivisionCode",
    #           },
    #           failover: "PRIMARY", # accepts PRIMARY, SECONDARY
    #           ttl: 1,
    #           resource_records: [
    #             {
    #               value: "RData", # required
    #             },
    #           ],
    #           alias_target: {
    #             hosted_zone_id: "ResourceId", # required
    #             dns_name: "DNSName", # required
    #             evaluate_target_health: false, # required
    #           },
    #           health_check_id: "HealthCheckId",
    #           traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #         },
    #       }
    #
    # @!attribute [rw] action
    #   The action to perform:
    #
    #   * `CREATE`\: Creates a resource record set that has the specified
    #     values.
    #
    #   * `DELETE`\: Deletes a existing resource record set.
    #
    #     To delete the resource record set that is associated with a
    #     traffic policy instance, use ` DeleteTrafficPolicyInstance `.
    #     Amazon Route 53 will delete the resource record set automatically.
    #     If you delete the resource record set by using
    #     `ChangeResourceRecordSets`, Amazon Route 53 doesn't automatically
    #     delete the traffic policy instance, and you'll continue to be
    #     charged for it even though it's no longer in use.
    #
    #   * `UPSERT`\: If a resource record set doesn't already exist, Amazon
    #     Route 53 creates it. If a resource record set does exist, Amazon
    #     Route 53 updates it with the values in the request.
    #
    #   The values that you need to include in the request depend on the
    #   type of resource record set that you're creating, deleting, or
    #   updating:
    #
    #   **Basic resource record sets (excluding alias, failover,
    #   geolocation, latency, and weighted resource record sets)**
    #
    #   * `Name`
    #
    #   * `Type`
    #
    #   * `TTL`
    #
    #   **Failover, geolocation, latency, or weighted resource record sets
    #   (excluding alias resource record sets)**
    #
    #   * `Name`
    #
    #   * `Type`
    #
    #   * `TTL`
    #
    #   * `SetIdentifier`
    #
    #   **Alias resource record sets (including failover alias, geolocation
    #   alias, latency alias, and weighted alias resource record sets)**
    #
    #   * `Name`
    #
    #   * `Type`
    #
    #   * `AliasTarget` (includes `DNSName`, `EvaluateTargetHealth`, and
    #     `HostedZoneId`)
    #
    #   * `SetIdentifier` (for failover, geolocation, latency, and weighted
    #     resource record sets)
    #   @return [String]
    #
    # @!attribute [rw] resource_record_set
    #   Information about the resource record set to create, delete, or
    #   update.
    #   @return [Types::ResourceRecordSet]
    #
    class Change < Struct.new(
      :action,
      :resource_record_set)
      include Aws::Structure
    end

    # The information for a change request.
    #
    # @note When making an API call, you may pass ChangeBatch
    #   data as a hash:
    #
    #       {
    #         comment: "ResourceDescription",
    #         changes: [ # required
    #           {
    #             action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
    #             resource_record_set: { # required
    #               name: "DNSName", # required
    #               type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #               set_identifier: "ResourceRecordSetIdentifier",
    #               weight: 1,
    #               region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
    #               geo_location: {
    #                 continent_code: "GeoLocationContinentCode",
    #                 country_code: "GeoLocationCountryCode",
    #                 subdivision_code: "GeoLocationSubdivisionCode",
    #               },
    #               failover: "PRIMARY", # accepts PRIMARY, SECONDARY
    #               ttl: 1,
    #               resource_records: [
    #                 {
    #                   value: "RData", # required
    #                 },
    #               ],
    #               alias_target: {
    #                 hosted_zone_id: "ResourceId", # required
    #                 dns_name: "DNSName", # required
    #                 evaluate_target_health: false, # required
    #               },
    #               health_check_id: "HealthCheckId",
    #               traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] comment
    #   *Optional:* Any comments you want to include about a change batch
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] changes
    #   Information about the changes to make to the record sets.
    #   @return [Array<Types::Change>]
    #
    class ChangeBatch < Struct.new(
      :comment,
      :changes)
      include Aws::Structure
    end

    # A complex type that describes change information about changes made to
    # your hosted zone.
    #
    # @!attribute [rw] id
    #   The ID of the request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current state of the request. `PENDING` indicates that this
    #   request has not yet been applied to all Amazon Route 53 DNS servers.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The date and time the change request was submitted, in Coordinated
    #   Universal Time (UTC) format: `YYYY-MM-DDThh:mm:ssZ`. For more
    #   information, see the Wikipedia entry [ISO 8601][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] comment
    #   A complex type that describes change information about changes made
    #   to your hosted zone.
    #
    #   This element contains an ID that you use when performing a GetChange
    #   action to get detailed information about the change.
    #   @return [String]
    #
    class ChangeInfo < Struct.new(
      :id,
      :status,
      :submitted_at,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains change information for the resource
    # record set.
    #
    # @note When making an API call, you may pass ChangeResourceRecordSetsRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         change_batch: { # required
    #           comment: "ResourceDescription",
    #           changes: [ # required
    #             {
    #               action: "CREATE", # required, accepts CREATE, DELETE, UPSERT
    #               resource_record_set: { # required
    #                 name: "DNSName", # required
    #                 type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #                 set_identifier: "ResourceRecordSetIdentifier",
    #                 weight: 1,
    #                 region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
    #                 geo_location: {
    #                   continent_code: "GeoLocationContinentCode",
    #                   country_code: "GeoLocationCountryCode",
    #                   subdivision_code: "GeoLocationSubdivisionCode",
    #                 },
    #                 failover: "PRIMARY", # accepts PRIMARY, SECONDARY
    #                 ttl: 1,
    #                 resource_records: [
    #                   {
    #                     value: "RData", # required
    #                   },
    #                 ],
    #                 alias_target: {
    #                   hosted_zone_id: "ResourceId", # required
    #                   dns_name: "DNSName", # required
    #                   evaluate_target_health: false, # required
    #                 },
    #                 health_check_id: "HealthCheckId",
    #                 traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that contains the resource record sets
    #   that you want to change.
    #   @return [String]
    #
    # @!attribute [rw] change_batch
    #   A complex type that contains an optional comment and the `Changes`
    #   element.
    #   @return [Types::ChangeBatch]
    #
    class ChangeResourceRecordSetsRequest < Struct.new(
      :hosted_zone_id,
      :change_batch)
      include Aws::Structure
    end

    # A complex type containing the response for the request.
    #
    # @!attribute [rw] change_info
    #   A complex type that contains information about changes made to your
    #   hosted zone.
    #
    #   This element contains an ID that you use when performing a GetChange
    #   action to get detailed information about the change.
    #   @return [Types::ChangeInfo]
    #
    class ChangeResourceRecordSetsResponse < Struct.new(
      :change_info)
      include Aws::Structure
    end

    # A complex type that contains information about the tags that you want
    # to add, edit, or delete.
    #
    # @note When making an API call, you may pass ChangeTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #         resource_id: "TagResourceId", # required
    #         add_tags: [
    #           {
    #             key: "TagKey",
    #             value: "TagValue",
    #           },
    #         ],
    #         remove_tag_keys: ["TagKey"],
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource for which you want to add, change, or delete
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] add_tags
    #   A complex type that contains a list of the tags that you want to add
    #   to the specified health check or hosted zone and/or the tags for
    #   which you want to edit the `Value` element.
    #
    #   You can add a maximum of 10 tags to a health check or a hosted zone.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] remove_tag_keys
    #   A complex type that contains a list of the tags that you want to
    #   delete from the specified health check or hosted zone. You can
    #   specify up to 10 keys.
    #   @return [Array<String>]
    #
    class ChangeTagsForResourceRequest < Struct.new(
      :resource_type,
      :resource_id,
      :add_tags,
      :remove_tag_keys)
      include Aws::Structure
    end

    # Empty response for the request.
    #
    class ChangeTagsForResourceResponse < Aws::EmptyStructure; end

    # A complex type that contains information about the CloudWatch alarm
    # that Amazon Route 53 is monitoring for this health check.
    #
    # @!attribute [rw] evaluation_periods
    #   For the metric that the CloudWatch alarm is associated with, the
    #   number of periods that the metric is compared to the threshold.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   For the metric that the CloudWatch alarm is associated with, the
    #   value the metric is compared with.
    #   @return [Float]
    #
    # @!attribute [rw] comparison_operator
    #   For the metric that the CloudWatch alarm is associated with, the
    #   arithmetic operation that is used for the comparison.
    #   @return [String]
    #
    # @!attribute [rw] period
    #   For the metric that the CloudWatch alarm is associated with, the
    #   duration of one evaluation period in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] metric_name
    #   The name of the CloudWatch metric that the alarm is associated with.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the metric that the alarm is associated with. For
    #   more information, see [Amazon CloudWatch Namespaces, Dimensions, and
    #   Metrics Reference][1] in the *Amazon CloudWatch User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html
    #   @return [String]
    #
    # @!attribute [rw] statistic
    #   For the metric that the CloudWatch alarm is associated with, the
    #   statistic that is applied to the metric.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   For the metric that the CloudWatch alarm is associated with, a
    #   complex type that contains information about the dimensions for the
    #   metric.For information, see [Amazon CloudWatch Namespaces,
    #   Dimensions, and Metrics Reference](
    #   http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html)
    #   in the *Amazon CloudWatch User Guide*.
    #   @return [Array<Types::Dimension>]
    #
    class CloudWatchAlarmConfiguration < Struct.new(
      :evaluation_periods,
      :threshold,
      :comparison_operator,
      :period,
      :metric_name,
      :namespace,
      :statistic,
      :dimensions)
      include Aws::Structure
    end

    # A complex type that contains the health check request information.
    #
    # @note When making an API call, you may pass CreateHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         caller_reference: "HealthCheckNonce", # required
    #         health_check_config: { # required
    #           ip_address: "IPAddress",
    #           port: 1,
    #           type: "HTTP", # required, accepts HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
    #           resource_path: "ResourcePath",
    #           fully_qualified_domain_name: "FullyQualifiedDomainName",
    #           search_string: "SearchString",
    #           request_interval: 1,
    #           failure_threshold: 1,
    #           measure_latency: false,
    #           inverted: false,
    #           health_threshold: 1,
    #           child_health_checks: ["HealthCheckId"],
    #           enable_sni: false,
    #           regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
    #           alarm_identifier: {
    #             region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #             name: "AlarmName", # required
    #           },
    #           insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
    #         },
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique string that identifies the request and that allows failed
    #   `CreateHealthCheck` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CallerReference` string every time you create a health check.
    #   @return [String]
    #
    # @!attribute [rw] health_check_config
    #   A complex type that contains the response to a `CreateHealthCheck`
    #   request.
    #   @return [Types::HealthCheckConfig]
    #
    class CreateHealthCheckRequest < Struct.new(
      :caller_reference,
      :health_check_config)
      include Aws::Structure
    end

    # A complex type containing the response information for the new health
    # check.
    #
    # @!attribute [rw] health_check
    #   A complex type that contains identifying information about the
    #   health check.
    #   @return [Types::HealthCheck]
    #
    # @!attribute [rw] location
    #   The unique URL representing the new health check.
    #   @return [String]
    #
    class CreateHealthCheckResponse < Struct.new(
      :health_check,
      :location)
      include Aws::Structure
    end

    # A complex type containing the hosted zone request information.
    #
    # @note When making an API call, you may pass CreateHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         name: "DNSName", # required
    #         vpc: {
    #           vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #           vpc_id: "VPCId",
    #         },
    #         caller_reference: "Nonce", # required
    #         hosted_zone_config: {
    #           comment: "ResourceDescription",
    #           private_zone: false,
    #         },
    #         delegation_set_id: "ResourceId",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the domain. For resource record types that include a
    #   domain name, specify a fully qualified domain name, for example,
    #   *www.example.com*. The trailing dot is optional; Amazon Route 53
    #   assumes that the domain name is fully qualified. This means that
    #   Amazon Route 53 treats *www.example.com* (without a trailing dot)
    #   and *www.example.com.* (with a trailing dot) as identical.
    #
    #   If you're creating a public hosted zone, this is the name you have
    #   registered with your DNS registrar. If your domain name is
    #   registered with a registrar other than Amazon Route 53, change the
    #   name servers for your domain to the set of `NameServers` that
    #   `CreateHostedZone` returns in the DelegationSet element.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The VPC that you want your hosted zone to be associated with. By
    #   providing this parameter, your newly created hosted can't be
    #   resolved anywhere other than the given VPC.
    #   @return [Types::VPC]
    #
    # @!attribute [rw] caller_reference
    #   A unique string that identifies the request and that allows failed
    #   `CreateHostedZone` requests to be retried without the risk of
    #   executing the operation twice. You must use a unique
    #   `CallerReference` string every time you create a hosted zone.
    #   `CallerReference` can be any unique string, for example, a date/time
    #   stamp.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_config
    #   (Optional) A complex type that contains an optional comment about
    #   your hosted zone. If you don't want to specify a comment, omit both
    #   the `HostedZoneConfig` and `Comment` elements.
    #   @return [Types::HostedZoneConfig]
    #
    # @!attribute [rw] delegation_set_id
    #   If you want to associate a reusable delegation set with this hosted
    #   zone, the ID that Amazon Route 53 assigned to the reusable
    #   delegation set when you created it. For more information about
    #   reusable delegation sets, see CreateReusableDelegationSet.
    #
    #   Type
    #
    #   : String
    #
    #   Default
    #
    #   : None
    #
    #   Parent
    #
    #   : `CreatedHostedZoneRequest`
    #   @return [String]
    #
    class CreateHostedZoneRequest < Struct.new(
      :name,
      :vpc,
      :caller_reference,
      :hosted_zone_config,
      :delegation_set_id)
      include Aws::Structure
    end

    # A complex type containing the response information for the hosted
    # zone.
    #
    # @!attribute [rw] hosted_zone
    #   A complex type that contains general information about the hosted
    #   zone.
    #   @return [Types::HostedZone]
    #
    # @!attribute [rw] change_info
    #   A complex type that describes the changes made to your hosted zone.
    #   @return [Types::ChangeInfo]
    #
    # @!attribute [rw] delegation_set
    #   A complex type that describes the name servers for this hosted zone.
    #   @return [Types::DelegationSet]
    #
    # @!attribute [rw] vpc
    #   A complex type that contains information about an Amazon VPC that
    #   you associated with this hosted zone.
    #   @return [Types::VPC]
    #
    # @!attribute [rw] location
    #   The unique URL representing the new hosted zone.
    #   @return [String]
    #
    class CreateHostedZoneResponse < Struct.new(
      :hosted_zone,
      :change_info,
      :delegation_set,
      :vpc,
      :location)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReusableDelegationSetRequest
    #   data as a hash:
    #
    #       {
    #         caller_reference: "Nonce", # required
    #         hosted_zone_id: "ResourceId",
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique string that identifies the request, and that allows you to
    #   retry failed `CreateReusableDelegationSet` requests without the risk
    #   of executing the operation twice. You must use a unique
    #   `CallerReference` string every time you submit a
    #   `CreateReusableDelegationSet` request. `CallerReference` can be any
    #   unique string, for example a date/time stamp.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   If you want to mark the delegation set for an existing hosted zone
    #   as reusable, the ID for that hosted zone.
    #   @return [String]
    #
    class CreateReusableDelegationSetRequest < Struct.new(
      :caller_reference,
      :hosted_zone_id)
      include Aws::Structure
    end

    # @!attribute [rw] delegation_set
    #   A complex type that contains name server information.
    #   @return [Types::DelegationSet]
    #
    # @!attribute [rw] location
    #   The unique URL representing the new reusable delegation set.
    #   @return [String]
    #
    class CreateReusableDelegationSetResponse < Struct.new(
      :delegation_set,
      :location)
      include Aws::Structure
    end

    # A complex type that contains information about the resource record
    # sets that you want to create based on a specified traffic policy.
    #
    # @note When making an API call, you may pass CreateTrafficPolicyInstanceRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         name: "DNSName", # required
    #         ttl: 1, # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone in which you want Amazon Route 53 to
    #   create resource record sets by using the configuration in a traffic
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The domain name (such as example.com) or subdomain name (such as
    #   www.example.com) for which Amazon Route 53 responds to DNS queries
    #   by using the resource record sets that Amazon Route 53 creates for
    #   this traffic policy instance.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   (Optional) The TTL that you want Amazon Route 53 to assign to all of
    #   the resource record sets that it creates in the specified hosted
    #   zone.
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_policy_id
    #   The ID of the traffic policy that you want to use to create resource
    #   record sets in the specified hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_version
    #   The version of the traffic policy that you want to use to create
    #   resource record sets in the specified hosted zone.
    #   @return [Integer]
    #
    class CreateTrafficPolicyInstanceRequest < Struct.new(
      :hosted_zone_id,
      :name,
      :ttl,
      :traffic_policy_id,
      :traffic_policy_version)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # `CreateTrafficPolicyInstance` request.
    #
    # @!attribute [rw] traffic_policy_instance
    #   A complex type that contains settings for the new traffic policy
    #   instance.
    #   @return [Types::TrafficPolicyInstance]
    #
    # @!attribute [rw] location
    #   A unique URL that represents a new traffic policy instance.
    #   @return [String]
    #
    class CreateTrafficPolicyInstanceResponse < Struct.new(
      :traffic_policy_instance,
      :location)
      include Aws::Structure
    end

    # A complex type that contains information about the traffic policy that
    # you want to create.
    #
    # @note When making an API call, you may pass CreateTrafficPolicyRequest
    #   data as a hash:
    #
    #       {
    #         name: "TrafficPolicyName", # required
    #         document: "TrafficPolicyDocument", # required
    #         comment: "TrafficPolicyComment",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the traffic policy.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The definition of this traffic policy in JSON format. For more
    #   information, see [Traffic Policy Document Format][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   (Optional) Any comments that you want to include about the traffic
    #   policy.
    #   @return [String]
    #
    class CreateTrafficPolicyRequest < Struct.new(
      :name,
      :document,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # `CreateTrafficPolicy` request.
    #
    # @!attribute [rw] traffic_policy
    #   A complex type that contains settings for the new traffic policy.
    #   @return [Types::TrafficPolicy]
    #
    # @!attribute [rw] location
    #   A unique URL that represents a new traffic policy.
    #   @return [String]
    #
    class CreateTrafficPolicyResponse < Struct.new(
      :traffic_policy,
      :location)
      include Aws::Structure
    end

    # A complex type that contains information about the traffic policy for
    # which you want to create a new version.
    #
    # @note When making an API call, you may pass CreateTrafficPolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyId", # required
    #         document: "TrafficPolicyDocument", # required
    #         comment: "TrafficPolicyComment",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy for which you want to create a new
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The definition of this version of the traffic policy, in JSON
    #   format. You specified the JSON in the `CreateTrafficPolicyVersion`
    #   request. For more information about the JSON format, see
    #   CreateTrafficPolicy.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment that you specified in the `CreateTrafficPolicyVersion`
    #   request, if any.
    #   @return [String]
    #
    class CreateTrafficPolicyVersionRequest < Struct.new(
      :id,
      :document,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # `CreateTrafficPolicyVersion` request.
    #
    # @!attribute [rw] traffic_policy
    #   A complex type that contains settings for the new version of the
    #   traffic policy.
    #   @return [Types::TrafficPolicy]
    #
    # @!attribute [rw] location
    #   A unique URL that represents a new traffic policy version.
    #   @return [String]
    #
    class CreateTrafficPolicyVersionResponse < Struct.new(
      :traffic_policy,
      :location)
      include Aws::Structure
    end

    # A complex type that contains information about the request to
    # authorize associating a VPC with your private hosted zone.
    # Authorization is only required when a private hosted zone and a VPC
    # were created by using different accounts.
    #
    # @note When making an API call, you may pass CreateVPCAssociationAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         vpc: { # required
    #           vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #           vpc_id: "VPCId",
    #         },
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the private hosted zone that you want to authorize
    #   associating a VPC with.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   A complex type that contains the VPC ID and region for the VPC that
    #   you want to authorize associating with your hosted zone.
    #   @return [Types::VPC]
    #
    class CreateVPCAssociationAuthorizationRequest < Struct.new(
      :hosted_zone_id,
      :vpc)
      include Aws::Structure
    end

    # A complex type that contains the response information from a
    # CreateVPCAssociationAuthorization request.
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that you authorized associating a VPC
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   The VPC that you authorized associating with a hosted zone.
    #   @return [Types::VPC]
    #
    class CreateVPCAssociationAuthorizationResponse < Struct.new(
      :hosted_zone_id,
      :vpc)
      include Aws::Structure
    end

    # A complex type that describes the name servers for this hosted zone.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Route 53 assigns to a reusable delegation set.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   A unique string that identifies the request, and that allows you to
    #   retry failed `CreateReusableDelegationSet` requests without the risk
    #   of executing the operation twice. You must use a unique
    #   `CallerReference` string every time you submit a
    #   `CreateReusableDelegationSet` request. `CallerReference` can be any
    #   unique string, for example, a date/time stamp.
    #   @return [String]
    #
    # @!attribute [rw] name_servers
    #   A complex type that contains a list of the authoritative name
    #   servers for the hosted zone.
    #   @return [Array<String>]
    #
    class DelegationSet < Struct.new(
      :id,
      :caller_reference,
      :name_servers)
      include Aws::Structure
    end

    # This action deletes a health check. Send a `DELETE` request to the
    # `/2013-04-01/DeleteHealthCheckRequest` resource.
    #
    # @note When making an API call, you may pass DeleteHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         health_check_id: "HealthCheckId", # required
    #       }
    #
    # @!attribute [rw] health_check_id
    #   The ID of the health check that you want to delete.
    #   @return [String]
    #
    class DeleteHealthCheckRequest < Struct.new(
      :health_check_id)
      include Aws::Structure
    end

    # An empty element.
    #
    class DeleteHealthCheckResponse < Aws::EmptyStructure; end

    # A complex type that contains information about the hosted zone that
    # you want to delete.
    #
    # @note When making an API call, you may pass DeleteHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the hosted zone you want to delete.
    #   @return [String]
    #
    class DeleteHostedZoneRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A complex type containing the response information for the request.
    #
    # @!attribute [rw] change_info
    #   A complex type that contains the ID, the status, and the date and
    #   time of your delete request.
    #   @return [Types::ChangeInfo]
    #
    class DeleteHostedZoneResponse < Struct.new(
      :change_info)
      include Aws::Structure
    end

    # A complex type containing the information for the delete request.
    #
    # @note When making an API call, you may pass DeleteReusableDelegationSetRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the reusable delegation set you want to delete.
    #   @return [String]
    #
    class DeleteReusableDelegationSetRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # An empty element.
    #
    class DeleteReusableDelegationSetResponse < Aws::EmptyStructure; end

    # A complex type that contains information about the traffic policy
    # instance that you want to delete.
    #
    # @note When making an API call, you may pass DeleteTrafficPolicyInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy instance that you want to delete.
    #
    #   When you delete a traffic policy instance, Amazon Route 53 also
    #   deletes all of the resource record sets that were created when you
    #   created the traffic policy instance.
    #   @return [String]
    #
    class DeleteTrafficPolicyInstanceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # An empty element.
    #
    class DeleteTrafficPolicyInstanceResponse < Aws::EmptyStructure; end

    # A request to delete a specified traffic policy version.
    #
    # @note When making an API call, you may pass DeleteTrafficPolicyRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyId", # required
    #         version: 1, # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the traffic policy that you want to delete.
    #   @return [Integer]
    #
    class DeleteTrafficPolicyRequest < Struct.new(
      :id,
      :version)
      include Aws::Structure
    end

    # An empty element.
    #
    class DeleteTrafficPolicyResponse < Aws::EmptyStructure; end

    # A complex type that contains information about the request to remove
    # authorization to associate a VPC that was created by one AWS account
    # with a hosted zone that was created with a different AWS account.
    #
    # @note When making an API call, you may pass DeleteVPCAssociationAuthorizationRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         vpc: { # required
    #           vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #           vpc_id: "VPCId",
    #         },
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   When removing authorization to associate a VPC that was created by
    #   one AWS account with a hosted zone that was created with a different
    #   AWS account, the ID of the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   When removing authorization to associate a VPC that was created by
    #   one AWS account with a hosted zone that was created with a different
    #   AWS account, a complex type that includes the ID and region of the
    #   VPC.
    #   @return [Types::VPC]
    #
    class DeleteVPCAssociationAuthorizationRequest < Struct.new(
      :hosted_zone_id,
      :vpc)
      include Aws::Structure
    end

    # Empty response for the request.
    #
    class DeleteVPCAssociationAuthorizationResponse < Aws::EmptyStructure; end

    # For the metric that the CloudWatch alarm is associated with, a complex
    # type that contains information about one dimension.
    #
    # @!attribute [rw] name
    #   For the metric that the CloudWatch alarm is associated with, the
    #   name of one dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   For the metric that the CloudWatch alarm is associated with, the
    #   value of one dimension.
    #   @return [String]
    #
    class Dimension < Struct.new(
      :name,
      :value)
      include Aws::Structure
    end

    # A complex type that contains information about the VPC that you want
    # to disassociate from a specified private hosted zone.
    #
    # @note When making an API call, you may pass DisassociateVPCFromHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         vpc: { # required
    #           vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #           vpc_id: "VPCId",
    #         },
    #         comment: "DisassociateVPCComment",
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the private hosted zone that you want to disassociate a
    #   VPC from.
    #   @return [String]
    #
    # @!attribute [rw] vpc
    #   A complex type that contains information about the VPC that you're
    #   disassociating from the specified hosted zone.
    #   @return [Types::VPC]
    #
    # @!attribute [rw] comment
    #   *Optional:* A comment about the disassociation request.
    #   @return [String]
    #
    class DisassociateVPCFromHostedZoneRequest < Struct.new(
      :hosted_zone_id,
      :vpc,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # disassociate request.
    #
    # @!attribute [rw] change_info
    #   A complex type that describes the changes made to the specified
    #   private hosted zone.
    #   @return [Types::ChangeInfo]
    #
    class DisassociateVPCFromHostedZoneResponse < Struct.new(
      :change_info)
      include Aws::Structure
    end

    # A complex type that contains information about a geo location.
    #
    # @note When making an API call, you may pass GeoLocation
    #   data as a hash:
    #
    #       {
    #         continent_code: "GeoLocationContinentCode",
    #         country_code: "GeoLocationCountryCode",
    #         subdivision_code: "GeoLocationSubdivisionCode",
    #       }
    #
    # @!attribute [rw] continent_code
    #   The two-letter code for the continent.
    #
    #   Valid values: `AF` \| `AN` \| `AS` \| `EU` \| `OC` \| `NA` \| `SA`
    #
    #   Constraint: Specifying `ContinentCode` with either `CountryCode` or
    #   `SubdivisionCode` returns an `InvalidInput` error.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The two-letter code for the country.
    #   @return [String]
    #
    # @!attribute [rw] subdivision_code
    #   The code for the subdivision, for example, a state in the United
    #   States or a province in Canada.
    #   @return [String]
    #
    class GeoLocation < Struct.new(
      :continent_code,
      :country_code,
      :subdivision_code)
      include Aws::Structure
    end

    # A complex type that contains the codes and full continent, country,
    # and subdivision names for the specified `geolocation` code.
    #
    # @!attribute [rw] continent_code
    #   The two-letter code for the continent.
    #   @return [String]
    #
    # @!attribute [rw] continent_name
    #   The full name of the continent.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   The two-letter code for the country.
    #   @return [String]
    #
    # @!attribute [rw] country_name
    #   The name of the country.
    #   @return [String]
    #
    # @!attribute [rw] subdivision_code
    #   The code for the subdivision, for example, a state in the United
    #   States or a province in Canada.
    #   @return [String]
    #
    # @!attribute [rw] subdivision_name
    #   The full name of the subdivision, for example, a state in the United
    #   States or a province in Canada.
    #   @return [String]
    #
    class GeoLocationDetails < Struct.new(
      :continent_code,
      :continent_name,
      :country_code,
      :country_name,
      :subdivision_code,
      :subdivision_name)
      include Aws::Structure
    end

    # The input for a GetChange request.
    #
    # @note When making an API call, you may pass GetChangeRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the change batch request. The value that you specify here
    #   is the value that `ChangeResourceRecordSets` returned in the Id
    #   element when you submitted the request.
    #   @return [String]
    #
    class GetChangeRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A complex type that contains the `ChangeInfo` element.
    #
    # @!attribute [rw] change_info
    #   A complex type that contains information about the specified change
    #   batch.
    #   @return [Types::ChangeInfo]
    #
    class GetChangeResponse < Struct.new(
      :change_info)
      include Aws::Structure
    end

    # Empty request.
    #
    # @api private
    #
    class GetCheckerIpRangesRequest < Aws::EmptyStructure; end

    # A complex type that contains the `CheckerIpRanges` element.
    #
    # @!attribute [rw] checker_ip_ranges
    #   A complex type that contains sorted list of IP ranges in CIDR format
    #   for Amazon Route 53 health checkers.
    #   @return [Array<String>]
    #
    class GetCheckerIpRangesResponse < Struct.new(
      :checker_ip_ranges)
      include Aws::Structure
    end

    # A complex type that contains information about the request to get a
    # geo location.
    #
    # @note When making an API call, you may pass GetGeoLocationRequest
    #   data as a hash:
    #
    #       {
    #         continent_code: "GeoLocationContinentCode",
    #         country_code: "GeoLocationCountryCode",
    #         subdivision_code: "GeoLocationSubdivisionCode",
    #       }
    #
    # @!attribute [rw] continent_code
    #   Amazon Route 53 supports the following continent codes:
    #
    #   * **AF**\: Africa
    #
    #   * **AN**\: Antarctica
    #
    #   * **AS**\: Asia
    #
    #   * **EU**\: Europe
    #
    #   * **OC**\: Oceania
    #
    #   * **NA**\: North America
    #
    #   * **SA**\: South America
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Amazon Route 53 uses the two-letter country codes that are specified
    #   in [ISO standard 3166-1 alpha-2][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #   @return [String]
    #
    # @!attribute [rw] subdivision_code
    #   Amazon Route 53 uses the one- to three-letter subdivision codes that
    #   are specified in [ISO standard 3166-1 alpha-2][1]. Amazon Route 53
    #   doesn't support subdivision codes for all countries. If you specify
    #   `SubdivisionCode`, you must also specify `CountryCode`.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #   @return [String]
    #
    class GetGeoLocationRequest < Struct.new(
      :continent_code,
      :country_code,
      :subdivision_code)
      include Aws::Structure
    end

    # A complex type that contains the response information for the
    # specified geolocation code.
    #
    # @!attribute [rw] geo_location_details
    #   A complex type that contains the codes and full continent, country,
    #   and subdivision names for the specified geolocation code.
    #   @return [Types::GeoLocationDetails]
    #
    class GetGeoLocationResponse < Struct.new(
      :geo_location_details)
      include Aws::Structure
    end

    # To retrieve a count of all your health checks, send a `GET` request to
    # the `/2013-04-01/healthcheckcount` resource.
    #
    # @api private
    #
    class GetHealthCheckCountRequest < Aws::EmptyStructure; end

    # A complex type that contains the response to a `healthcheckcount`
    # request.
    #
    # @!attribute [rw] health_check_count
    #   The number of health checks associated with the current AWS account.
    #   @return [Integer]
    #
    class GetHealthCheckCountResponse < Struct.new(
      :health_check_count)
      include Aws::Structure
    end

    # This action gets the reason that a specified health check failed most
    # recently.
    #
    # To get the reason for the last failure of a health check, send a GET
    # request to the /2013-04-01/healthcheck/health check
    # ID/lastfailurereason resource.
    #
    # For information about viewing the last failure reason for a health
    # check using the Amazon Route 53 console, see [Viewing Health Check
    # Status and the Reason for Health Check Failures][1] in the *Amazon
    # Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-monitor-view-status.html
    #
    # @note When making an API call, you may pass GetHealthCheckLastFailureReasonRequest
    #   data as a hash:
    #
    #       {
    #         health_check_id: "HealthCheckId", # required
    #       }
    #
    # @!attribute [rw] health_check_id
    #   The ID for the health check for which you want the last failure
    #   reason. When you created the health check, `CreateHealthCheck`
    #   returned the ID in the response, in the `HealthCheckId` element.
    #   @return [String]
    #
    class GetHealthCheckLastFailureReasonRequest < Struct.new(
      :health_check_id)
      include Aws::Structure
    end

    # A complex type that contains the response to a
    # `GetHealthCheckLastFailureReason` request.
    #
    # @!attribute [rw] health_check_observations
    #   A list that contains one `Observation` element for each Amazon Route
    #   53 health checker that is reporting a last failure reason.
    #   @return [Array<Types::HealthCheckObservation>]
    #
    class GetHealthCheckLastFailureReasonResponse < Struct.new(
      :health_check_observations)
      include Aws::Structure
    end

    # This action gets information about a specified health check.
    #
    # Send a `GET` request to the `/Amazon Route 53 API
    # version/gethealthcheckrequest` resource.
    #
    # For information about getting information about a health check using
    # the Amazon Route 53 console, see [Amazon Route 53 Health Checks and
    # DNS Failover][1] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #
    # @note When making an API call, you may pass GetHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         health_check_id: "HealthCheckId", # required
    #       }
    #
    # @!attribute [rw] health_check_id
    #   The identifier that Amazon Route 53 assigned to the health check
    #   when you created it. When you add or update a resource record set,
    #   you use this value to specify which health check to use. The value
    #   can be up to 64 characters long.
    #   @return [String]
    #
    class GetHealthCheckRequest < Struct.new(
      :health_check_id)
      include Aws::Structure
    end

    # A complex type that contains the response to a `GetHealthCheck`
    # request.
    #
    # @!attribute [rw] health_check
    #   A complex type that contains information about one health check that
    #   is associated with the current AWS account.
    #   @return [Types::HealthCheck]
    #
    class GetHealthCheckResponse < Struct.new(
      :health_check)
      include Aws::Structure
    end

    # A complex type that contains information about the request to get
    # health check status for a health check.
    #
    # @note When making an API call, you may pass GetHealthCheckStatusRequest
    #   data as a hash:
    #
    #       {
    #         health_check_id: "HealthCheckId", # required
    #       }
    #
    # @!attribute [rw] health_check_id
    #   If you want Amazon Route 53 to return this resource record set in
    #   response to a DNS query only when a health check is passing, include
    #   the `HealthCheckId` element and specify the ID of the applicable
    #   health check.
    #
    #   Amazon Route 53 determines whether a resource record set is healthy
    #   by periodically sending a request to the endpoint that is specified
    #   in the health check. If that endpoint returns an HTTP status code of
    #   2xx or 3xx, the endpoint is healthy. If the endpoint returns an HTTP
    #   status code of 400 or greater, or if the endpoint doesn't respond
    #   for a certain amount of time, Amazon Route 53 considers the endpoint
    #   unhealthy and also considers the resource record set unhealthy.
    #
    #   The `HealthCheckId` element is only useful when Amazon Route 53 is
    #   choosing between two or more resource record sets to respond to a
    #   DNS query, and you want Amazon Route 53 to base the choice in part
    #   on the status of a health check. Configuring health checks only
    #   makes sense in the following configurations:
    #
    #   * You're checking the health of the resource record sets in a
    #     weighted, latency, geolocation, or failover resource record set,
    #     and you specify health check IDs for all of the resource record
    #     sets. If the health check for one resource record set specifies an
    #     endpoint that is not healthy, Amazon Route 53 stops responding to
    #     queries using the value for that resource record set.
    #
    #   * You set `EvaluateTargetHealth` to `true` for the resource record
    #     sets in an alias, weighted alias, latency alias, geolocation
    #     alias, or failover alias resource record set, and you specify
    #     health check IDs for all of the resource record sets that are
    #     referenced by the alias resource record sets. For more information
    #     about this configuration, see `EvaluateTargetHealth`.
    #
    #     Amazon Route 53 doesn't check the health of the endpoint
    #     specified in the resource record set, for example, the endpoint
    #     specified by the IP address in the `Value` element. When you add a
    #     `HealthCheckId` element to a resource record set, Amazon Route 53
    #     checks the health of the endpoint that you specified in the health
    #     check.
    #
    #   For geolocation resource record sets, if an endpoint is unhealthy,
    #   Amazon Route 53 looks for a resource record set for the larger,
    #   associated geographic region. For example, suppose you have resource
    #   record sets for a state in the United States, for the United States,
    #   for North America, and for all locations. If the endpoint for the
    #   state resource record set is unhealthy, Amazon Route 53 checks the
    #   resource record sets for the United States, for North America, and
    #   for all locations (a resource record set for which the value of
    #   CountryCode is `*`), in that order, until it finds a resource record
    #   set for which the endpoint is healthy.
    #
    #   If your health checks specify the endpoint only by domain name, we
    #   recommend that you create a separate health check for each endpoint.
    #   For example, create a health check for each HTTP server that is
    #   serving content for www.example.com. For the value of
    #   `FullyQualifiedDomainName`, specify the domain name of the server
    #   (such as `us-east-1-www.example.com`), not the name of the resource
    #   record sets (example.com).
    #
    #   In this configuration, if you create a health check for which the
    #   value of `FullyQualifiedDomainName` matches the name of the resource
    #   record sets and then associate the health check with those resource
    #   record sets, health check results will be unpredictable.
    #   @return [String]
    #
    class GetHealthCheckStatusRequest < Struct.new(
      :health_check_id)
      include Aws::Structure
    end

    # A complex type that contains the response to a `GetHealthCheck`
    # request.
    #
    # @!attribute [rw] health_check_observations
    #   A list that contains one `HealthCheckObservation` element for each
    #   Amazon Route 53 health checker that is reporting a status about the
    #   health check endpoint.
    #   @return [Array<Types::HealthCheckObservation>]
    #
    class GetHealthCheckStatusResponse < Struct.new(
      :health_check_observations)
      include Aws::Structure
    end

    # To retrieve a count of all your hosted zones, send a `GET` request to
    # the `/2013-04-01/hostedzonecount` resource.
    #
    # @api private
    #
    class GetHostedZoneCountRequest < Aws::EmptyStructure; end

    # A complex type that contains the response to a `hostedzonecount`
    # request.
    #
    # @!attribute [rw] hosted_zone_count
    #   The total number of public and private hosted zones associated with
    #   the current AWS account.
    #   @return [Integer]
    #
    class GetHostedZoneCountResponse < Struct.new(
      :hosted_zone_count)
      include Aws::Structure
    end

    # The input for a GetHostedZone request.
    #
    # @note When making an API call, you may pass GetHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the hosted zone for which you want to get a list of the
    #   name servers in the delegation set.
    #   @return [String]
    #
    class GetHostedZoneRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A complex type containing the response information for the hosted
    # zone.
    #
    # @!attribute [rw] hosted_zone
    #   A complex type that contains general information about the hosted
    #   zone.
    #   @return [Types::HostedZone]
    #
    # @!attribute [rw] delegation_set
    #   A complex type that describes the name servers for this hosted zone.
    #   @return [Types::DelegationSet]
    #
    # @!attribute [rw] vp_cs
    #   A complex type that contains information about VPCs associated with
    #   the specified hosted zone.
    #   @return [Array<Types::VPC>]
    #
    class GetHostedZoneResponse < Struct.new(
      :hosted_zone,
      :delegation_set,
      :vp_cs)
      include Aws::Structure
    end

    # The input for a `GetReusableDelegationSet` request.
    #
    # @note When making an API call, you may pass GetReusableDelegationSetRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the reusable delegation set for which you want to get a
    #   list of the name server.
    #   @return [String]
    #
    class GetReusableDelegationSetRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A complex type that contains the response to the
    # `GetReusableDelegationSet` request.
    #
    # @!attribute [rw] delegation_set
    #   A complex type that contains information about the reusable
    #   delegation set.
    #   @return [Types::DelegationSet]
    #
    class GetReusableDelegationSetResponse < Struct.new(
      :delegation_set)
      include Aws::Structure
    end

    # To retrieve a count of all your traffic policy instances, send a `GET`
    # request to the `/2013-04-01/trafficpolicyinstancecount` resource.
    #
    # @api private
    #
    class GetTrafficPolicyInstanceCountRequest < Aws::EmptyStructure; end

    # A complex type that contains information about the resource record
    # sets that Amazon Route 53 created based on a specified traffic policy.
    #
    # @!attribute [rw] traffic_policy_instance_count
    #   The number of traffic policy instances that are associated with the
    #   current AWS account.
    #   @return [Integer]
    #
    class GetTrafficPolicyInstanceCountResponse < Struct.new(
      :traffic_policy_instance_count)
      include Aws::Structure
    end

    # Gets information about a specified traffic policy instance.
    #
    # To get information about a traffic policy instance, send a `GET`
    # request to the `/Amazon Route 53 API version/trafficpolicyinstance/Id
    # ` resource.
    #
    # @note When making an API call, you may pass GetTrafficPolicyInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy instance that you want to get
    #   information about.
    #   @return [String]
    #
    class GetTrafficPolicyInstanceRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # A complex type that contains information about the resource record
    # sets that Amazon Route 53 created based on a specified traffic policy.
    #
    # @!attribute [rw] traffic_policy_instance
    #   A complex type that contains settings for the traffic policy
    #   instance.
    #   @return [Types::TrafficPolicyInstance]
    #
    class GetTrafficPolicyInstanceResponse < Struct.new(
      :traffic_policy_instance)
      include Aws::Structure
    end

    # Gets information about a specific traffic policy version. To get the
    # information, send a GET request to the /2013-04-01/trafficpolicy
    # resource, and specify the ID and the version of the traffic policy.
    #
    # @note When making an API call, you may pass GetTrafficPolicyRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyId", # required
    #         version: 1, # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy that you want to get information about.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the traffic policy that you want to get
    #   information about.
    #   @return [Integer]
    #
    class GetTrafficPolicyRequest < Struct.new(
      :id,
      :version)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policy
    #   A complex type that contains settings for the specified traffic
    #   policy.
    #   @return [Types::TrafficPolicy]
    #
    class GetTrafficPolicyResponse < Struct.new(
      :traffic_policy)
      include Aws::Structure
    end

    # A complex type that contains information about one health check that
    # is associated with the current AWS account.
    #
    # @!attribute [rw] id
    #   The identifier that Amazon Route 53assigned to the health check when
    #   you created it. When you add or update a resource record set, you
    #   use this value to specify which health check to use. The value can
    #   be up to 64 characters long.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   A unique string that you specified when you created the health
    #   check.
    #   @return [String]
    #
    # @!attribute [rw] health_check_config
    #   A complex type that contains detailed information about one health
    #   check.
    #   @return [Types::HealthCheckConfig]
    #
    # @!attribute [rw] health_check_version
    #   The version of the health check. You can optionally pass this value
    #   in a call to `UpdateHealthCheck` to prevent overwriting another
    #   change to the health check.
    #   @return [Integer]
    #
    # @!attribute [rw] cloud_watch_alarm_configuration
    #   A complex type that contains information about the CloudWatch alarm
    #   that Amazon Route 53 is monitoring for this health check.
    #   @return [Types::CloudWatchAlarmConfiguration]
    #
    class HealthCheck < Struct.new(
      :id,
      :caller_reference,
      :health_check_config,
      :health_check_version,
      :cloud_watch_alarm_configuration)
      include Aws::Structure
    end

    # A complex type that contains information about the health check.
    #
    # @note When making an API call, you may pass HealthCheckConfig
    #   data as a hash:
    #
    #       {
    #         ip_address: "IPAddress",
    #         port: 1,
    #         type: "HTTP", # required, accepts HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC
    #         resource_path: "ResourcePath",
    #         fully_qualified_domain_name: "FullyQualifiedDomainName",
    #         search_string: "SearchString",
    #         request_interval: 1,
    #         failure_threshold: 1,
    #         measure_latency: false,
    #         inverted: false,
    #         health_threshold: 1,
    #         child_health_checks: ["HealthCheckId"],
    #         enable_sni: false,
    #         regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
    #         alarm_identifier: {
    #           region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #           name: "AlarmName", # required
    #         },
    #         insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
    #       }
    #
    # @!attribute [rw] ip_address
    #   The IPv4 or IPv6 IP address of the endpoint that you want Amazon
    #   Route 53 to perform health checks on. If you don't specify a value
    #   for `IPAddress`, Amazon Route 53 sends a DNS request to resolve the
    #   domain name that you specify in `FullyQualifiedDomainName` at the
    #   interval that you specify in `RequestInterval`. Using an IP address
    #   returned by DNS, Amazon Route 53 then checks the health of the
    #   endpoint.
    #
    #   If the endpoint is an EC2 instance, we recommend that you create an
    #   Elastic IP address, associate it with your EC2 instance, and specify
    #   the Elastic IP address for `IPAddress`. This ensures that the IP
    #   address of your instance will never change.
    #
    #   For more information, see
    #   HealthCheckConfig$FullyQualifiedDomainName.
    #
    #   Constraints: Amazon Route 53 can't check the health of endpoints
    #   for which the IP address is in local, private, non-routable, or
    #   multicast ranges. For more information about IP addresses for which
    #   you can't create health checks, see the following documents:
    #
    #   * [RFC 5735, Special Use IPv4 Addresses][1]
    #
    #   * [RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space][2]
    #
    #   * [RFC 5156, Special-Use IPv6 Addresses][3]
    #
    #   When the value of `Type` is `CALCULATED` or `CLOUDWATCH_METRIC`,
    #   omit `IPAddress`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5735
    #   [2]: https://tools.ietf.org/html/rfc6598
    #   [3]: https://tools.ietf.org/html/rfc5156
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on the endpoint on which you want Amazon Route 53 to
    #   perform health checks. Specify a value for Port only when you
    #   specify a value for `IPAddress`.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   The type of health check that you want to create, which indicates
    #   how Amazon Route 53 determines whether an endpoint is healthy.
    #
    #   You can't change the value of `Type` after you create a health
    #   check.
    #
    #   You can create the following types of health checks:
    #
    #   * **HTTP**\: Amazon Route 53 tries to establish a TCP connection. If
    #     successful, Amazon Route 53 submits an HTTP request and waits for
    #     an HTTP status code of 200 or greater and less than 400.
    #
    #   * **HTTPS**\: Amazon Route 53 tries to establish a TCP connection.
    #     If successful, Amazon Route 53 submits an HTTPS request and waits
    #     for an HTTP status code of 200 or greater and less than 400.
    #
    #     If you specify `HTTPS` for the value of `Type`, the endpoint must
    #     support TLS v1.0 or later.
    #
    #   * **HTTP\_STR\_MATCH**\: Amazon Route 53 tries to establish a TCP
    #     connection. If successful, Amazon Route 53 submits an HTTP request
    #     and searches the first 5,120 bytes of the response body for the
    #     string that you specify in `SearchString`.
    #
    #   * **HTTPS\_STR\_MATCH**\: Amazon Route 53 tries to establish a TCP
    #     connection. If successful, Amazon Route 53 submits an `HTTPS`
    #     request and searches the first 5,120 bytes of the response body
    #     for the string that you specify in `SearchString`.
    #
    #   * **TCP**\: Amazon Route 53 tries to establish a TCP connection.
    #
    #   * **CLOUDWATCH\_METRIC**\: The health check is associated with a
    #     CloudWatch alarm. If the state of the alarm is `OK`, the health
    #     check is considered healthy. If the state is `ALARM`, the health
    #     check is considered unhealthy. If CloudWatch doesn't have
    #     sufficient data to determine whether the state is `OK` or `ALARM`,
    #     the health check status depends on the setting for
    #     `InsufficientDataHealthStatus`\: `Healthy`, `Unhealthy`, or
    #     `LastKnownStatus`.
    #
    #   * **CALCULATED**\: For health checks that monitor the status of
    #     other health checks, Amazon Route 53 adds up the number of health
    #     checks that Amazon Route 53 health checkers consider to be healthy
    #     and compares that number with the value of `HealthThreshold`.
    #
    #   For more information about how Amazon Route 53 determines whether an
    #   endpoint is healthy, see the introduction to this topic.
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The path, if any, that you want Amazon Route 53 to request when
    #   performing health checks. The path can be any value for which your
    #   endpoint will return an HTTP status code of 2xx or 3xx when the
    #   endpoint is healthy, for example, the file
    #   /docs/route53-health-check.html.
    #   @return [String]
    #
    # @!attribute [rw] fully_qualified_domain_name
    #   Amazon Route 53 behavior depends on whether you specify a value for
    #   `IPAddress`.
    #
    #   **If you specify a value for** `IPAddress`\:
    #
    #   Amazon Route 53 sends health check requests to the specified IPv4 or
    #   IPv6 address and passes the value of `FullyQualifiedDomainName` in
    #   the `Host` header for all health checks except TCP health checks.
    #   This is typically the fully qualified DNS name of the endpoint on
    #   which you want Amazon Route 53 to perform health checks.
    #
    #   When Amazon Route 53 checks the health of an endpoint, here is how
    #   it constructs the `Host` header:
    #
    #   * If you specify a value of `80` for `Port` and `HTTP` or
    #     `HTTP_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the Host header.
    #
    #   * If you specify a value of `443` for `Port` and `HTTPS` or
    #     `HTTPS_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the `Host` header.
    #
    #   * If you specify another value for `Port` and any value except `TCP`
    #     for `Type`, Amazon Route 53 passes `FullyQualifiedDomainName:Port`
    #     to the endpoint in the `Host` header.
    #
    #   If you don't specify a value for `FullyQualifiedDomainName`, Amazon
    #   Route 53 substitutes the value of `IPAddress` in the `Host` header
    #   in each of the preceding cases.
    #
    #   <b>If you don't specify a value for <code>IPAddress</code> </b>\:
    #
    #   Amazon Route 53 sends a DNS request to the domain that you specify
    #   for `FullyQualifiedDomainName` at the interval that you specify for
    #   `RequestInterval`. Using an IPv4 address that DNS returns, Amazon
    #   Route 53 then checks the health of the endpoint.
    #
    #   <note markdown="1"> If you don't specify a value for `IPAddress`, Amazon Route 53 uses
    #   only IPv4 to send health checks to the endpoint. If there's no
    #   resource record set with a type of A for the name that you specify
    #   for `FullyQualifiedDomainName`, the health check fails with a "DNS
    #   resolution failed" error.
    #
    #    </note>
    #
    #   If you want to check the health of weighted, latency, or failover
    #   resource record sets and you choose to specify the endpoint only by
    #   `FullyQualifiedDomainName`, we recommend that you create a separate
    #   health check for each endpoint. For example, create a health check
    #   for each HTTP server that is serving content for www.example.com.
    #   For the value of `FullyQualifiedDomainName`, specify the domain name
    #   of the server (such as us-east-1-www.example.com), not the name of
    #   the resource record sets (www.example.com).
    #
    #   In this configuration, if you create a health check for which the
    #   value of `FullyQualifiedDomainName` matches the name of the resource
    #   record sets and you then associate the health check with those
    #   resource record sets, health check results will be unpredictable.
    #
    #   In addition, if the value that you specify for `Type` is `HTTP`,
    #   `HTTPS`, `HTTP_STR_MATCH`, or `HTTPS_STR_MATCH`, Amazon Route 53
    #   passes the value of `FullyQualifiedDomainName` in the `Host` header,
    #   as it does when you specify a value for `IPAddress`. If the value of
    #   `Type` is `TCP`, Amazon Route 53 doesn't pass a `Host` header.
    #   @return [String]
    #
    # @!attribute [rw] search_string
    #   If the value of Type is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the
    #   string that you want Amazon Route 53 to search for in the response
    #   body from the specified resource. If the string appears in the
    #   response body, Amazon Route 53 considers the resource healthy.
    #
    #   Amazon Route 53 considers case when searching for `SearchString` in
    #   the response body.
    #   @return [String]
    #
    # @!attribute [rw] request_interval
    #   The number of seconds between the time that Amazon Route 53 gets a
    #   response from your endpoint and the time that it sends the next
    #   health-check request. Each Amazon Route 53 health checker makes
    #   requests at this interval.
    #
    #   You can't change the value of `RequestInterval` after you create a
    #   health check.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_threshold
    #   The number of consecutive health checks that an endpoint must pass
    #   or fail for Amazon Route 53 to change the current status of the
    #   endpoint from unhealthy to healthy or vice versa. For more
    #   information, see [How Amazon Route 53 Determines Whether an Endpoint
    #   Is Healthy][1] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [Integer]
    #
    # @!attribute [rw] measure_latency
    #   Specify whether you want Amazon Route 53 to measure the latency
    #   between health checkers in multiple AWS regions and your endpoint,
    #   and to display CloudWatch latency graphs on the **Health Checks**
    #   page in the Amazon Route 53 console.
    #
    #   You can't change the value of `MeasureLatency` after you create a
    #   health check.
    #   @return [Boolean]
    #
    # @!attribute [rw] inverted
    #   Specify whether you want Amazon Route 53 to invert the status of a
    #   health check, for example, to consider a health check unhealthy when
    #   it otherwise would be considered healthy.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_threshold
    #   The number of child health checks that are associated with a
    #   `CALCULATED` health that Amazon Route 53 must consider healthy for
    #   the `CALCULATED` health check to be considered healthy. To specify
    #   the child health checks that you want to associate with a
    #   `CALCULATED` health check, use the
    #   HealthCheckConfig$ChildHealthChecks and
    #   HealthCheckConfig$ChildHealthChecks elements.
    #
    #   Note the following:
    #
    #   * If you specify a number greater than the number of child health
    #     checks, Amazon Route 53 always considers this health check to be
    #     unhealthy.
    #
    #   * If you specify `0`, Amazon Route 53 always considers this health
    #     check to be healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] child_health_checks
    #   (CALCULATED Health Checks Only) A complex type that contains one
    #   `ChildHealthCheck` element for each health check that you want to
    #   associate with a `CALCULATED` health check.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_sni
    #   Specify whether you want Amazon Route 53 to send the value of
    #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
    #   message during TLS negotiation. This allows the endpoint to respond
    #   to `HTTPS` health check requests with the applicable SSL/TLS
    #   certificate.
    #
    #   Some endpoints require that `HTTPS` requests include the host name
    #   in the `client_hello` message. If you don't enable SNI, the status
    #   of the health check will be `SSL alert handshake_failure`. A health
    #   check can also have that status for other reasons. If SNI is enabled
    #   and you're still getting the error, check the SSL/TLS configuration
    #   on your endpoint and confirm that your certificate is valid.
    #
    #   The SSL/TLS certificate on your endpoint includes a domain name in
    #   the `Common Name` field and possibly several more in the `Subject
    #   Alternative Names` field. One of the domain names in the certificate
    #   should match the value that you specify for
    #   `FullyQualifiedDomainName`. If the endpoint responds to the
    #   `client_hello` message with a certificate that does not include the
    #   domain name that you specified in `FullyQualifiedDomainName`, a
    #   health checker will retry the handshake. In the second attempt, the
    #   health checker will omit `FullyQualifiedDomainName` from the
    #   `client_hello` message.
    #   @return [Boolean]
    #
    # @!attribute [rw] regions
    #   A complex type that contains one Region element for each region from
    #   which you want Amazon Route 53 health checkers to check the
    #   specified endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_identifier
    #   A complex type that identifies the CloudWatch alarm that you want
    #   Amazon Route 53 health checkers to use to determine whether this
    #   health check is healthy.
    #   @return [Types::AlarmIdentifier]
    #
    # @!attribute [rw] insufficient_data_health_status
    #   When CloudWatch has insufficient data about the metric to determine
    #   the alarm state, the status that you want Amazon Route 53 to assign
    #   to the health check:
    #
    #   * `Healthy`\: Amazon Route 53 considers the health check to be
    #     healthy.
    #
    #   * `Unhealthy`\: Amazon Route 53 considers the health check to be
    #     unhealthy.
    #
    #   * `LastKnownStatus`\: Amazon Route 53uses the status of the health
    #     check from the last time CloudWatch had sufficient data to
    #     determine the alarm state. For new health checks that have no last
    #     known status, the default status for the health check is healthy.
    #   @return [String]
    #
    class HealthCheckConfig < Struct.new(
      :ip_address,
      :port,
      :type,
      :resource_path,
      :fully_qualified_domain_name,
      :search_string,
      :request_interval,
      :failure_threshold,
      :measure_latency,
      :inverted,
      :health_threshold,
      :child_health_checks,
      :enable_sni,
      :regions,
      :alarm_identifier,
      :insufficient_data_health_status)
      include Aws::Structure
    end

    # A complex type that contains the last failure reason as reported by
    # one Amazon Route 53 health checker.
    #
    # @!attribute [rw] region
    #   The region of the Amazon Route 53 health checker that provided the
    #   status in StatusReport.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the Amazon Route 53 health checker that provided
    #   the failure reason in `StatusReport`.
    #   @return [String]
    #
    # @!attribute [rw] status_report
    #   A complex type that contains the last failure reason as reported by
    #   one Amazon Route 53 health checker and the time of the failed health
    #   check.
    #   @return [Types::StatusReport]
    #
    class HealthCheckObservation < Struct.new(
      :region,
      :ip_address,
      :status_report)
      include Aws::Structure
    end

    # A complex type that contains general information about the hosted
    # zone.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Route 53 assigned to the hosted zone when you
    #   created it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain. For public hosted zones, this is the name
    #   that you have registered with your DNS registrar.
    #
    #   For information about how to specify characters other than `a-z`,
    #   `0-9`, and `-` (hyphen) and how to specify internationalized domain
    #   names, see CreateHostedZone.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   The value that you specified for `CallerReference` when you created
    #   the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   A complex type that includes the `Comment` and `PrivateZone`
    #   elements. If you omitted the `HostedZoneConfig` and `Comment`
    #   elements from the request, the `Config` and `Comment` elements
    #   don't appear in the response.
    #   @return [Types::HostedZoneConfig]
    #
    # @!attribute [rw] resource_record_set_count
    #   The number of resource record sets in the hosted zone.
    #   @return [Integer]
    #
    class HostedZone < Struct.new(
      :id,
      :name,
      :caller_reference,
      :config,
      :resource_record_set_count)
      include Aws::Structure
    end

    # A complex type that contains an optional comment about your hosted
    # zone. If you don't want to specify a comment, omit both the
    # `HostedZoneConfig` and `Comment` elements.
    #
    # @note When making an API call, you may pass HostedZoneConfig
    #   data as a hash:
    #
    #       {
    #         comment: "ResourceDescription",
    #         private_zone: false,
    #       }
    #
    # @!attribute [rw] comment
    #   Any comments that you want to include about the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] private_zone
    #   A value that indicates whether this is a private hosted zone.
    #   @return [Boolean]
    #
    class HostedZoneConfig < Struct.new(
      :comment,
      :private_zone)
      include Aws::Structure
    end

    # To get a list of geographic locations that Amazon Route 53 supports
    # for geolocation, send a `GET` request to the `/Amazon Route 53 API
    # version/geolocations` resource. The response to this request includes
    # a `GeoLocationDetails` element for each location that Amazon Route 53
    # supports.
    #
    # Countries are listed first, and continents are listed last. If Amazon
    # Route 53 supports subdivisions for a country (for example, states or
    # provinces), the subdivisions for that country are listed in
    # alphabetical order immediately after the corresponding country.
    #
    # @note When making an API call, you may pass ListGeoLocationsRequest
    #   data as a hash:
    #
    #       {
    #         start_continent_code: "GeoLocationContinentCode",
    #         start_country_code: "GeoLocationCountryCode",
    #         start_subdivision_code: "GeoLocationSubdivisionCode",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] start_continent_code
    #   The code for the continent with which you want to start listing
    #   locations that Amazon Route 53 supports for geolocation. If Amazon
    #   Route 53 has already returned a page or more of results, if
    #   `IsTruncated` is true, and if `NextContinentCode` from the previous
    #   response has a value, enter that value in `StartContinentCode` to
    #   return the next page of results.
    #
    #   Include `StartContinentCode` only if you want to list continents.
    #   Don't include `StartContinentCode` when you're listing countries
    #   or countries with their subdivisions.
    #   @return [String]
    #
    # @!attribute [rw] start_country_code
    #   The code for the country with which you want to start listing
    #   locations that Amazon Route 53 supports for geolocation. If Amazon
    #   Route 53 has already returned a page or more of results, if
    #   `IsTruncated` is `true`, and if `NextCountryCode` from the previous
    #   response has a value, enter that value in `StartCountryCode` to
    #   return the next page of results.
    #
    #   Amazon Route 53 uses the two-letter country codes that are specified
    #   in [ISO standard 3166-1 alpha-2][1].
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2
    #   @return [String]
    #
    # @!attribute [rw] start_subdivision_code
    #   The code for the subdivision (for example, state or province) with
    #   which you want to start listing locations that Amazon Route 53
    #   supports for geolocation. If Amazon Route 53 has already returned a
    #   page or more of results, if `IsTruncated` is `true`, and if
    #   `NextSubdivisionCode` from the previous response has a value, enter
    #   that value in `StartSubdivisionCode` to return the next page of
    #   results.
    #
    #   To list subdivisions of a country, you must include both
    #   `StartCountryCode` and `StartSubdivisionCode`.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) The maximum number of geolocations to be included in the
    #   response body for this request. If more than `MaxItems` geolocations
    #   remain to be listed, then the value of the `IsTruncated` element in
    #   the response is `true`.
    #   @return [Integer]
    #
    class ListGeoLocationsRequest < Struct.new(
      :start_continent_code,
      :start_country_code,
      :start_subdivision_code,
      :max_items)
      include Aws::Structure
    end

    # A complex type containing the response information for the request.
    #
    # @!attribute [rw] geo_location_details_list
    #   A complex type that contains one `GeoLocationDetails` element for
    #   each location that Amazon Route 53 supports for geolocation.
    #   @return [Array<Types::GeoLocationDetails>]
    #
    # @!attribute [rw] is_truncated
    #   A value that indicates whether more locations remain to be listed
    #   after the last location in this response. If so, the value of
    #   `IsTruncated` is `true`. To get more values, submit another request
    #   and include the values of `NextContinentCode`, `NextCountryCode`,
    #   and `NextSubdivisionCode` in the `StartContinentCode`,
    #   `StartCountryCode`, and `StartSubdivisionCode`, as applicable.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_continent_code
    #   If `IsTruncated` is `true`, you can make a follow-up request to
    #   display more locations. Enter the value of `NextContinentCode` in
    #   the `StartContinentCode` parameter in another `GET`
    #   `ListGeoLocations` request.
    #   @return [String]
    #
    # @!attribute [rw] next_country_code
    #   If `IsTruncated` is `true`, you can make a follow-up request to
    #   display more locations. Enter the value of `NextCountryCode` in the
    #   `StartCountryCode` parameter in another `GET` `ListGeoLocations`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] next_subdivision_code
    #   If `IsTruncated` is `true`, you can make a follow-up request to
    #   display more locations. Enter the value of `NextSubdivisionCode` in
    #   the `StartSubdivisionCode` parameter in another `GET`
    #   `ListGeoLocations` request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for `MaxItems` in the request.
    #   @return [Integer]
    #
    class ListGeoLocationsResponse < Struct.new(
      :geo_location_details_list,
      :is_truncated,
      :next_continent_code,
      :next_country_code,
      :next_subdivision_code,
      :max_items)
      include Aws::Structure
    end

    # To retrieve a list of your health checks, send a `GET` request to the
    # `/2013-04-01/healthcheck` resource. The response to this request
    # includes a `HealthChecks` element with zero or more `HealthCheck`
    # child elements. By default, the list of health checks is displayed on
    # a single page. You can control the length of the page that is
    # displayed by using the `MaxItems` parameter. You can use the `Marker`
    # parameter to control the health check that the list begins with.
    #
    # <note markdown="1"> Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems`
    # to a value greater than 100, Amazon Route 53 returns only the first
    # 100.
    #
    #  </note>
    #
    # @note When making an API call, you may pass ListHealthChecksRequest
    #   data as a hash:
    #
    #       {
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   If the response to a `ListHealthChecks` is more than one page,
    #   marker is the health check ID for the first health check on the next
    #   page of results. For more information, see
    #   ListHealthChecksResponse$MaxItems.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of `HealthCheck` elements you want
    #   `ListHealthChecks` to return on each page of the response body. If
    #   the AWS account includes more `HealthCheck` elements than the value
    #   of `maxitems`, the response is broken into pages. Each page contains
    #   the number of `HealthCheck` elements specified by `maxitems`.
    #
    #   For example, suppose you specify `10` for `maxitems` and the current
    #   AWS account has `51` health checks. In the response,
    #   `ListHealthChecks` sets ListHealthChecksResponse$IsTruncated to true
    #   and includes the ListHealthChecksResponse$NextMarker element. To
    #   access the second and subsequent pages, you resend the `GET`
    #   `ListHealthChecks` request, add the ListHealthChecksResponse$Marker
    #   parameter to the request, and specify the value of the
    #   ListHealthChecksResponse$NextMarker element from the previous
    #   response. On the last (sixth) page of the response, which contains
    #   only one HealthCheck element:
    #
    #   * The value of ListHealthChecksResponse$IsTruncated is `false`.
    #
    #   * ListHealthChecksResponse$NextMarker is omitted.
    #   @return [Integer]
    #
    class ListHealthChecksRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response to a `ListHealthChecks`
    # request.
    #
    # @!attribute [rw] health_checks
    #   A complex type that contains one `HealthCheck` element for each
    #   health check that is associated with the current AWS account.
    #   @return [Array<Types::HealthCheck>]
    #
    # @!attribute [rw] marker
    #   For the second and subsequent calls to `ListHealthChecks`, `Marker`
    #   is the value that you specified for the marker parameter in the
    #   previous request.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more health checks to be
    #   listed. If the response was truncated, you can get the next group of
    #   `maxitems` health checks by calling `ListHealthChecks` again and
    #   specifying the value of the `NextMarker` element in the marker
    #   parameter.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, the value of `NextMarker` identifies the
    #   first health check in the next group of `maxitems` health checks.
    #   Call `ListHealthChecks` again and specify the value of `NextMarker`
    #   in the marker parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   call to `ListHealthChecks` that produced the current response.
    #   @return [Integer]
    #
    class ListHealthChecksResponse < Struct.new(
      :health_checks,
      :marker,
      :is_truncated,
      :next_marker,
      :max_items)
      include Aws::Structure
    end

    # To retrieve a list of your public and private hosted zones in ASCII
    # order by domain name, send a `GET` request to the `/Amazon Route 53
    # API version/hostedzonesbyname` resource. The response to this request
    # includes a `HostedZone` child element for each hosted zone that was
    # created by the current AWS account. `ListHostedZonesByName` sorts
    # hosted zones by name with the labels reversed, for example:
    #
    # `com.example.www.`
    #
    # Note the trailing dot, which can change the sort order in some
    # circumstances.
    #
    # If the domain name includes escape characters or Punycode,
    # `ListHostedZonesByName` alphabetizes the domain name using the escaped
    # or Punycoded value, which is the format that Amazon Route 53 saves in
    # its database. For example, to create a hosted zone for exämple.com,
    # you specify `ex\344mple.com` for the domain name.
    # `ListHostedZonesByName` alphabetizes it as: `com.ex\344mple`. The
    # labels are reversed, and it's alphabetized using the escaped value.
    # For more information about valid domain name formats, including
    # internationalized domain names, see [DNS Domain Name Format][1] in the
    # *Amazon Route 53 Developer Guide*.
    #
    # Amazon Route 53 returns up to 100 items in each response. If you have
    # a lot of hosted zones, you can use the `MaxItems` parameter to list
    # them in groups of up to 100. The response includes values that help
    # you navigate from one group of `MaxItems` hosted zones to the next:
    #
    # * The `DNSName` and `HostedZoneId` elements in the response contain
    #   the values, if any, that you specified for the `dnsname` and
    #   `hostedzoneid` parameters in the request that produced the current
    #   response.
    #
    # * The `MaxItems` element in the response contains the value, if any,
    #   that you specified for the `maxitems` parameter in the request that
    #   produced the current response.
    #
    # * If the value of `IsTruncated` in the response is true, there are
    #   more hosted zones associated with the current Amazon Route 53
    #   account.
    #
    #   If `IsTruncated` is `false`, this response includes the last hosted
    #   zone that is associated with the current account. The `NextDNSName`
    #   element and `NextHostedZoneId` elements are omitted from the
    #   response.
    #
    # * The `NextDNSName` and `NextHostedZoneId` elements in the response
    #   contain the domain name and the hosted zone ID of the next hosted
    #   zone that is associated with the current AWS account. If you want to
    #   list more hosted zones, make another call to
    #   `ListHostedZonesByName`, and specify the value of `NextDNSName` and
    #   `NextHostedZoneId` in the `dnsname` and `hostedzoneid` parameters,
    #   respectively.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
    #
    # @note When making an API call, you may pass ListHostedZonesByNameRequest
    #   data as a hash:
    #
    #       {
    #         dns_name: "DNSName",
    #         hosted_zone_id: "ResourceId",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] dns_name
    #   (Optional) For your first request to `ListHostedZonesByName`,
    #   include the `dnsname` parameter only if you want to specify the name
    #   of the first hosted zone in the response. If you don't include the
    #   `dnsname` parameter, Amazon Route 53 returns all of the hosted zones
    #   that were created by the current AWS account, in ASCII order. For
    #   subsequent requests, include both `dnsname` and `hostedzoneid`
    #   parameters. For `dnsname`, specify the value of `NextDNSName` from
    #   the previous response.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   (Optional) For your first request to `ListHostedZonesByName`, do not
    #   include the `hostedzoneid` parameter.
    #
    #   If you have more hosted zones than the value of `maxitems`,
    #   `ListHostedZonesByName` returns only the first `maxitems` hosted
    #   zones. To get the next group of `maxitems` hosted zones, submit
    #   another request to `ListHostedZonesByName` and include both
    #   `dnsname` and `hostedzoneid` parameters. For the value of
    #   `hostedzoneid`, specify the value of the `NextHostedZoneId` element
    #   from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of hosted zones to be included in the response
    #   body for this request. If you have more than `maxitems` hosted
    #   zones, then the value of the `IsTruncated` element in the response
    #   is true, and the values of `NextDNSName` and `NextHostedZoneId`
    #   specify the first hosted zone in the next group of `maxitems` hosted
    #   zones.
    #   @return [Integer]
    #
    class ListHostedZonesByNameRequest < Struct.new(
      :dns_name,
      :hosted_zone_id,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] hosted_zones
    #   A complex type that contains general information about the hosted
    #   zone.
    #   @return [Array<Types::HostedZone>]
    #
    # @!attribute [rw] dns_name
    #   For the second and subsequent calls to `ListHostedZonesByName`,
    #   `DNSName` is the value that you specified for the `dnsname`
    #   parameter in the request that produced the current response.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID that Amazon Route 53 assigned to the hosted zone when you
    #   created it.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more hosted zones to be
    #   listed. If the response was truncated, you can get the next group of
    #   `maxitems` hosted zones by calling `ListHostedZonesByName` again and
    #   specifying the values of `NextDNSName` and `NextHostedZoneId`
    #   elements in the `dnsname` and `hostedzoneid` parameters.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_dns_name
    #   If `IsTruncated` is true, the value of `NextDNSName` is the name of
    #   the first hosted zone in the next group of `maxitems` hosted zones.
    #   Call `ListHostedZonesByName` again and specify the value of
    #   `NextDNSName` and `NextHostedZoneId` in the `dnsname` and
    #   `hostedzoneid` parameters, respectively.
    #
    #   This element is present only if `IsTruncated` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] next_hosted_zone_id
    #   If `IsTruncated` is `true`, the value of `NextHostedZoneId`
    #   identifies the first hosted zone in the next group of `maxitems`
    #   hosted zones. Call `ListHostedZonesByName` again and specify the
    #   value of `NextDNSName` and `NextHostedZoneId` in the `dnsname` and
    #   `hostedzoneid` parameters, respectively.
    #
    #   This element is present only if `IsTruncated` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   call to `ListHostedZonesByName` that produced the current response.
    #   @return [Integer]
    #
    class ListHostedZonesByNameResponse < Struct.new(
      :hosted_zones,
      :dns_name,
      :hosted_zone_id,
      :is_truncated,
      :next_dns_name,
      :next_hosted_zone_id,
      :max_items)
      include Aws::Structure
    end

    # To retrieve a list of your public and private hosted zones, send a
    # `GET` request to the `/2013-04-01/hostedzone` resource. The response
    # to this request includes a HostedZone child element for each hosted
    # zone that was created by the current AWS account.
    #
    # Amazon Route 53 returns a maximum of 100 items in each response. If
    # you have a lot of hosted zones, you can use the maxitems parameter to
    # list them in groups of up to 100. The response includes four values
    # that help you navigate from one group of maxitems hosted zones to the
    # next:
    #
    # * `MaxItems` is the value that you specified for the `maxitems`
    #   parameter in the request that produced the current response.
    #
    # * If the value of `IsTruncated` in the response is `true`, there are
    #   more hosted zones associated with the current AWS account.
    #
    #   If `IsTruncated` is `false`, this response includes the last hosted
    #   zone that is associated with the current account.
    #
    # * `NextMarker` is the hosted zone ID of the next hosted zone that is
    #   associated with the current AWS account. If you want to list more
    #   hosted zones, make another call to `ListHostedZones`, and specify
    #   the value of the `NextMarker` element in the marker parameter.
    #
    #   If `IsTruncated` is `false`, the `NextMarker` element is omitted
    #   from the response.
    #
    # * If you're making the second or subsequent call to
    #   `ListHostedZones`, the `Marker` element matches the value that you
    #   specified in the `marker` parameter in the previous request.
    #
    # @note When making an API call, you may pass ListHostedZonesRequest
    #   data as a hash:
    #
    #       {
    #         marker: "PageMarker",
    #         max_items: 1,
    #         delegation_set_id: "ResourceId",
    #       }
    #
    # @!attribute [rw] marker
    #   (Optional) If you have more hosted zones than the value of
    #   `maxitems`, `ListHostedZones` returns only the first `maxitems`
    #   hosted zones. To get the next group of `maxitems` hosted zones,
    #   submit another request to `ListHostedZones`. For the value of
    #   marker, specify the value of the `NextMarker` element that was
    #   returned in the previous response.
    #
    #   Hosted zones are listed in the order in which they were created.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) The maximum number of hosted zones to be included in the
    #   response body for this request. If you have more than `maxitems`
    #   hosted zones, the value of the `IsTruncated` element in the response
    #   is `true`, and the value of the `NextMarker` element is the hosted
    #   zone ID of the first hosted zone in the next group of `maxitems`
    #   hosted zones.
    #   @return [Integer]
    #
    # @!attribute [rw] delegation_set_id
    #   If you're using reusable delegation sets and you want to list all
    #   of the hosted zones that are associated with a reusable delegation
    #   set, specify the ID of that reusable delegation set.
    #   @return [String]
    #
    class ListHostedZonesRequest < Struct.new(
      :marker,
      :max_items,
      :delegation_set_id)
      include Aws::Structure
    end

    # @!attribute [rw] hosted_zones
    #   A complex type that contains general information about the hosted
    #   zone.
    #   @return [Array<Types::HostedZone>]
    #
    # @!attribute [rw] marker
    #   For the second and subsequent calls to `ListHostedZones`, `Marker`
    #   is the value that you specified for the marker parameter in the
    #   request that produced the current response.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag indicating whether there are more hosted zones to be listed.
    #   If the response was truncated, you can get the next group of
    #   `maxitems` hosted zones by calling `ListHostedZones` again and
    #   specifying the value of the `NextMarker` element in the marker
    #   parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, the value of `NextMarker` identifies the
    #   first hosted zone in the next group of `maxitems` hosted zones. Call
    #   `ListHostedZones` again and specify the value of `NextMarker` in the
    #   `marker` parameter.
    #
    #   This element is present only if `IsTruncated` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   call to `ListHostedZones` that produced the current response.
    #   @return [Integer]
    #
    class ListHostedZonesResponse < Struct.new(
      :hosted_zones,
      :marker,
      :is_truncated,
      :next_marker,
      :max_items)
      include Aws::Structure
    end

    # The input for a ListResourceRecordSets request.
    #
    # @note When making an API call, you may pass ListResourceRecordSetsRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         start_record_name: "DNSName",
    #         start_record_type: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         start_record_identifier: "ResourceRecordSetIdentifier",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that contains the resource record sets
    #   that you want to get.
    #   @return [String]
    #
    # @!attribute [rw] start_record_name
    #   The first name in the lexicographic ordering of domain names that
    #   you want the `ListResourceRecordSets` request to list.
    #   @return [String]
    #
    # @!attribute [rw] start_record_type
    #   The type of resource record set to begin the record listing from.
    #
    #   Valid values for basic resource record sets: `A` \| `AAAA` \|
    #   `CNAME` \| `MX` \| `NAPTR` \| `NS` \| `PTR` \| `SOA` \| `SPF` \|
    #   `SRV` \| `TXT`
    #
    #   Values for weighted, latency, geo, and failover resource record
    #   sets: `A` \| `AAAA` \| `CNAME` \| `MX` \| `NAPTR` \| `PTR` \| `SPF`
    #   \| `SRV` \| `TXT`
    #
    #   Values for alias resource record sets:
    #
    #   * **CloudFront distribution**\: A or AAAA
    #
    #   * **Elastic Beanstalk environment that has a regionalized
    #     subdomain**\: A
    #
    #   * **ELB load balancer**\: A \| AAAA
    #
    #   * **Amazon S3 bucket**\: A
    #
    #   Constraint: Specifying `type` without specifying `name` returns an
    #   `InvalidInput` error.
    #   @return [String]
    #
    # @!attribute [rw] start_record_identifier
    #   *Weighted resource record sets only:* If results were truncated for
    #   a given DNS name and type, specify the value of
    #   `NextRecordIdentifier` from the previous response to get the next
    #   resource record set that has the current DNS name and type.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) The maximum number of resource records sets to include in
    #   the response body for this request. If the response includes more
    #   than `maxitems` resource record sets, the value of the `IsTruncated`
    #   element in the response is `true`, and the values of the
    #   `NextRecordName` and `NextRecordType` elements in the response
    #   identify the first resource record set in the next group of
    #   `maxitems` resource record sets.
    #   @return [Integer]
    #
    class ListResourceRecordSetsRequest < Struct.new(
      :hosted_zone_id,
      :start_record_name,
      :start_record_type,
      :start_record_identifier,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains list information for the resource record
    # set.
    #
    # @!attribute [rw] resource_record_sets
    #   Information about multiple resource record sets.
    #   @return [Array<Types::ResourceRecordSet>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more resource record sets remain to be
    #   listed. If your results were truncated, you can make a follow-up
    #   pagination request by using the `NextRecordName` element.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_record_name
    #   If the results were truncated, the name of the next record in the
    #   list.
    #
    #   This element is present only if `IsTruncated` is true.
    #   @return [String]
    #
    # @!attribute [rw] next_record_type
    #   If the results were truncated, the type of the next record in the
    #   list.
    #
    #   This element is present only if `IsTruncated` is true.
    #   @return [String]
    #
    # @!attribute [rw] next_record_identifier
    #   *Weighted, latency, geolocation, and failover resource record sets
    #   only*\: If results were truncated for a given DNS name and type, the
    #   value of `SetIdentifier` for the next resource record set that has
    #   the current DNS name and type.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of records you requested.
    #   @return [Integer]
    #
    class ListResourceRecordSetsResponse < Struct.new(
      :resource_record_sets,
      :is_truncated,
      :next_record_name,
      :next_record_type,
      :next_record_identifier,
      :max_items)
      include Aws::Structure
    end

    # To retrieve a list of your reusable delegation sets, send a `GET`
    # request to the `/2013-04-01/delegationset` resource. The response to
    # this request includes a `DelegationSets` element with zero or more
    # `DelegationSet` child elements. By default, the list of reusable
    # delegation sets is displayed on a single page. You can control the
    # length of the page that is displayed by using the `MaxItems`
    # parameter. You can use the `Marker` parameter to control the
    # delegation set that the list begins with.
    #
    # <note markdown="1"> Amazon Route 53 returns a maximum of 100 items. If you set `MaxItems`
    # to a value greater than 100, Amazon Route 53 returns only the first
    # 100.
    #
    #  </note>
    #
    # @note When making an API call, you may pass ListReusableDelegationSetsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "PageMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   If you're making the second or subsequent call to
    #   `ListReusableDelegationSets`, the `Marker` element matches the value
    #   that you specified in the `marker` parameter in the previous
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   request that produced the current response.
    #   @return [Integer]
    #
    class ListReusableDelegationSetsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains information about the reusable delegation
    # sets that are associated with the current AWS account.
    #
    # @!attribute [rw] delegation_sets
    #   A complex type that contains one `DelegationSet` element for each
    #   reusable delegation set that was created by the current AWS account.
    #   @return [Array<Types::DelegationSet>]
    #
    # @!attribute [rw] marker
    #   For the second and subsequent calls to `ListReusableDelegationSets`,
    #   `Marker` is the value that you specified for the marker parameter in
    #   the request that produced the current response.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more reusable delegation
    #   sets to be listed. If the response is truncated, you can get the
    #   next group of `maxitems` reusable delegation sets by calling
    #   `ListReusableDelegationSets` again and specifying the value of the
    #   `NextMarker` element in the `marker` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, the value of `NextMarker` identifies the
    #   first reusable delegation set in the next group of `maxitems`
    #   reusable delegation sets. Call `ListReusableDelegationSets` again
    #   and specify the value of `NextMarker` in the `marker` parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   call to `ListReusableDelegationSets` that produced the current
    #   response.
    #   @return [Integer]
    #
    class ListReusableDelegationSetsResponse < Struct.new(
      :delegation_sets,
      :marker,
      :is_truncated,
      :next_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type containing information about a request for a list of
    # the tags that are associated with an individual resource.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #         resource_id: "TagResourceId", # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource for which you want to retrieve tags.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_type,
      :resource_id)
      include Aws::Structure
    end

    # A complex type that contains information about the health checks or
    # hosted zones for which you want to list tags.
    #
    # @!attribute [rw] resource_tag_set
    #   A `ResourceTagSet` containing tags associated with the specified
    #   resource.
    #   @return [Types::ResourceTagSet]
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_tag_set)
      include Aws::Structure
    end

    # A complex type that contains information about the health checks or
    # hosted zones for which you want to list tags.
    #
    # @note When making an API call, you may pass ListTagsForResourcesRequest
    #   data as a hash:
    #
    #       {
    #         resource_type: "healthcheck", # required, accepts healthcheck, hostedzone
    #         resource_ids: ["TagResourceId"], # required
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resources.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #   @return [String]
    #
    # @!attribute [rw] resource_ids
    #   A complex type that contains the ResourceId element for each
    #   resource for which you want to get a list of tags.
    #   @return [Array<String>]
    #
    class ListTagsForResourcesRequest < Struct.new(
      :resource_type,
      :resource_ids)
      include Aws::Structure
    end

    # A complex type containing tags for the specified resources.
    #
    # @!attribute [rw] resource_tag_sets
    #   A list of `ResourceTagSet`s containing tags associated with the
    #   specified resources.
    #   @return [Array<Types::ResourceTagSet>]
    #
    class ListTagsForResourcesResponse < Struct.new(
      :resource_tag_sets)
      include Aws::Structure
    end

    # A complex type that contains the information about the request to list
    # the traffic policies that are associated with the current AWS account.
    #
    # @note When making an API call, you may pass ListTrafficPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         traffic_policy_id_marker: "TrafficPolicyId",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] traffic_policy_id_marker
    #   (Conditional) For your first request to `ListTrafficPolicies`, do
    #   not include the `TrafficPolicyIdMarker` parameter.
    #
    #   If you have more traffic policies than the value of `MaxItems`,
    #   `ListTrafficPolicies` returns only the first `MaxItems` traffic
    #   policies. To get the next group of `MaxItems` policies, submit
    #   another request to `ListTrafficPolicies`. For the value of
    #   `TrafficPolicyIdMarker`, specify the value of the
    #   `TrafficPolicyIdMarker` element that was returned in the previous
    #   response.
    #
    #   Policies are listed in the order in which they were created.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) The maximum number of traffic policies to be included in
    #   the response body for this request. If you have more than `MaxItems`
    #   traffic policies, the value of the `IsTruncated` element in the
    #   response is `true`, and the value of the `TrafficPolicyIdMarker`
    #   element is the ID of the first traffic policy in the next group of
    #   `MaxItems` traffic policies.
    #   @return [Integer]
    #
    class ListTrafficPoliciesRequest < Struct.new(
      :traffic_policy_id_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policy_summaries
    #   A list that contains one `TrafficPolicySummary` element for each
    #   traffic policy that was created by the current AWS account.
    #   @return [Array<Types::TrafficPolicySummary>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more traffic policies to be
    #   listed. If the response was truncated, you can get the next group of
    #   `MaxItems` traffic policies by calling `ListTrafficPolicies` again
    #   and specifying the value of the `TrafficPolicyIdMarker` element in
    #   the `TrafficPolicyIdMarker` request parameter.
    #
    #   Valid Values: `true` \| `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] traffic_policy_id_marker
    #   If the value of `IsTruncated` is `true`, `TrafficPolicyIdMarker` is
    #   the ID of the first traffic policy in the next group of `MaxItems`
    #   traffic policies.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `MaxItems` parameter in the
    #   call to `ListTrafficPolicies` that produced the current response.
    #   @return [Integer]
    #
    class ListTrafficPoliciesResponse < Struct.new(
      :traffic_policy_summaries,
      :is_truncated,
      :traffic_policy_id_marker,
      :max_items)
      include Aws::Structure
    end

    # A request for the traffic policy instances that you created in a
    # specified hosted zone.
    #
    # @note When making an API call, you may pass ListTrafficPolicyInstancesByHostedZoneRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         traffic_policy_instance_name_marker: "DNSName",
    #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone for which you want to list traffic policy
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstancesByHostedZone`,
    #   omit this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstancesByHostedZone`,
    #   omit this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
    #   traffic policy instance in the next group of `MaxItems` traffic
    #   policy instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesByHostedZoneRequest < Struct.new(
      :hosted_zone_id,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policy_instances
    #   A list that contains one `TrafficPolicyInstance` element for each
    #   traffic policy instance that matches the elements in the request.
    #   @return [Array<Types::TrafficPolicyInstance>]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
    #   name of the first traffic policy instance in the next group of
    #   `MaxItems` traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   If `IsTruncated` is true, `TrafficPolicyInstanceTypeMarker` is the
    #   DNS type of the resource record sets that are associated with the
    #   first traffic policy instance in the next group of `MaxItems`
    #   traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more traffic policy
    #   instances to be listed. If the response was truncated, you can get
    #   the next group of `MaxItems` traffic policy instances by calling
    #   `ListTrafficPolicyInstancesByHostedZone` again and specifying the
    #   values of the `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
    #   request parameters.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `MaxItems` parameter in the
    #   call to `ListTrafficPolicyInstancesByHostedZone` that produced the
    #   current response.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesByHostedZoneResponse < Struct.new(
      :traffic_policy_instances,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :is_truncated,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the information about the request to list
    # your traffic policy instances.
    #
    # @note When making an API call, you may pass ListTrafficPolicyInstancesByPolicyRequest
    #   data as a hash:
    #
    #       {
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #         hosted_zone_id_marker: "ResourceId",
    #         traffic_policy_instance_name_marker: "DNSName",
    #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] traffic_policy_id
    #   The ID of the traffic policy for which you want to list traffic
    #   policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_version
    #   The version of the traffic policy for which you want to list traffic
    #   policy instances. The version must be associated with the traffic
    #   policy that is specified by `TrafficPolicyId`.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `HostedZoneIdMarker` is the ID of the hosted zone for the first
    #   traffic policy instance in the next group of `MaxItems` traffic
    #   policy instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   omit this value.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstancesByPolicy`, omit
    #   this value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
    #   traffic policy instance in the next group of `MaxItems` traffic
    #   policy instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get for this hosted
    #   zone.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesByPolicyRequest < Struct.new(
      :traffic_policy_id,
      :traffic_policy_version,
      :hosted_zone_id_marker,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policy_instances
    #   A list that contains one `TrafficPolicyInstance` element for each
    #   traffic policy instance that matches the elements in the request.
    #   @return [Array<Types::TrafficPolicyInstance>]
    #
    # @!attribute [rw] hosted_zone_id_marker
    #   If `IsTruncated` is `true`, `HostedZoneIdMarker` is the ID of the
    #   hosted zone of the first traffic policy instance in the next group
    #   of `MaxItems` traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
    #   name of the first traffic policy instance in the next group of
    #   `MaxItems` traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   If `IsTruncated` is `true`, `TrafficPolicyInstanceTypeMarker` is the
    #   DNS type of the resource record sets that are associated with the
    #   first traffic policy instance in the next group of `MaxItems`
    #   traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more traffic policy
    #   instances to be listed. If the response was truncated, you can get
    #   the next group of `MaxItems` traffic policy instances by calling
    #   `ListTrafficPolicyInstancesByPolicy` again and specifying the values
    #   of the `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
    #   request parameters.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `MaxItems` parameter in the
    #   call to `ListTrafficPolicyInstancesByPolicy` that produced the
    #   current response.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesByPolicyResponse < Struct.new(
      :traffic_policy_instances,
      :hosted_zone_id_marker,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :is_truncated,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the information about the request to list
    # your traffic policy instances.
    #
    # @note When making an API call, you may pass ListTrafficPolicyInstancesRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id_marker: "ResourceId",
    #         traffic_policy_instance_name_marker: "DNSName",
    #         traffic_policy_instance_type_marker: "SOA", # accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] hosted_zone_id_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   you have more traffic policy instances. To get the next group of
    #   `MaxItems` traffic policy instances, submit another
    #   `ListTrafficPolicyInstances` request. For the value of
    #   `HostedZoneIdMarker`, specify the value of `HostedZoneIdMarker` from
    #   the previous response, which is the hosted zone ID of the first
    #   traffic policy instance in the next group of `MaxItems` traffic
    #   policy instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceNameMarker` is the name of the first traffic
    #   policy instance in the next group of `MaxItems` traffic policy
    #   instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   For the first request to `ListTrafficPolicyInstances`, omit this
    #   value.
    #
    #   If the value of `IsTruncated` in the previous response was `true`,
    #   `TrafficPolicyInstanceTypeMarker` is the DNS type of the first
    #   traffic policy instance in the next group of `MaxItems` traffic
    #   policy instances.
    #
    #   If the value of `IsTruncated` in the previous response was `false`,
    #   there are no more traffic policy instances to get.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of traffic policy instances to be included in the
    #   response body for this request. If you have more than `MaxItems`
    #   traffic policy instances, the value of the `IsTruncated` element in
    #   the response is `true`, and the values of `HostedZoneIdMarker`,
    #   `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` represent the first traffic policy
    #   instance in the next group of `MaxItems` traffic policy instances.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesRequest < Struct.new(
      :hosted_zone_id_marker,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policy_instances
    #   A list that contains one `TrafficPolicyInstance` element for each
    #   traffic policy instance that matches the elements in the request.
    #   @return [Array<Types::TrafficPolicyInstance>]
    #
    # @!attribute [rw] hosted_zone_id_marker
    #   If `IsTruncated` is `true`, `HostedZoneIdMarker` is the ID of the
    #   hosted zone of the first traffic policy instance in the next group
    #   of `MaxItems` traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_name_marker
    #   If `IsTruncated` is `true`, `TrafficPolicyInstanceNameMarker` is the
    #   name of the first traffic policy instance in the next group of
    #   `MaxItems` traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_type_marker
    #   If `IsTruncated` is `true`, `TrafficPolicyInstanceTypeMarker` is the
    #   DNS type of the resource record sets that are associated with the
    #   first traffic policy instance in the next group of `MaxItems`
    #   traffic policy instances.
    #   @return [String]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more traffic policy
    #   instances to be listed. If the response was truncated, you can get
    #   the next group of `MaxItems` traffic policy instances by calling
    #   `ListTrafficPolicyInstances` again and specifying the values of the
    #   `HostedZoneIdMarker`, `TrafficPolicyInstanceNameMarker`, and
    #   `TrafficPolicyInstanceTypeMarker` elements in the corresponding
    #   request parameters.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `MaxItems` parameter in the
    #   call to `ListTrafficPolicyInstances` that produced the current
    #   response.
    #   @return [Integer]
    #
    class ListTrafficPolicyInstancesResponse < Struct.new(
      :traffic_policy_instances,
      :hosted_zone_id_marker,
      :traffic_policy_instance_name_marker,
      :traffic_policy_instance_type_marker,
      :is_truncated,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the information about the request to list
    # your traffic policies.
    #
    # @note When making an API call, you may pass ListTrafficPolicyVersionsRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyId", # required
    #         traffic_policy_version_marker: "TrafficPolicyVersionMarker",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] id
    #   Specify the value of `Id` of the traffic policy for which you want
    #   to list all versions.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_version_marker
    #   For your first request to `ListTrafficPolicyVersions`, do not
    #   include the `TrafficPolicyVersionMarker` parameter.
    #
    #   If you have more traffic policy versions than the value of
    #   `MaxItems`, `ListTrafficPolicyVersions` returns only the first group
    #   of `MaxItems` versions. To get the next group of `MaxItems` traffic
    #   policy versions, submit another request to
    #   `ListTrafficPolicyVersions`. For the value of
    #   `TrafficPolicyVersionMarker`, specify the value of the
    #   `TrafficPolicyVersionMarker` element that was returned in the
    #   previous response.
    #
    #   Traffic policy versions are listed in sequential order.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of traffic policy versions that you want Amazon
    #   Route 53 to include in the response body for this request. If the
    #   specified traffic policy has more than `MaxItems` versions, the
    #   value of the `IsTruncated` element in the response is `true`, and
    #   the value of the `TrafficPolicyVersionMarker` element is the ID of
    #   the first version in the next group of `MaxItems` traffic policy
    #   versions.
    #   @return [Integer]
    #
    class ListTrafficPolicyVersionsRequest < Struct.new(
      :id,
      :traffic_policy_version_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] traffic_policies
    #   A list that contains one `TrafficPolicy` element for each traffic
    #   policy version that is associated with the specified traffic policy.
    #   @return [Array<Types::TrafficPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more traffic policies to be
    #   listed. If the response was truncated, you can get the next group of
    #   `maxitems` traffic policies by calling `ListTrafficPolicyVersions`
    #   again and specifying the value of the `NextMarker` element in the
    #   `marker` parameter.
    #   @return [Boolean]
    #
    # @!attribute [rw] traffic_policy_version_marker
    #   If `IsTruncated` is `true`, the value of
    #   `TrafficPolicyVersionMarker` identifies the first traffic policy in
    #   the next group of `MaxItems` traffic policies. Call
    #   `ListTrafficPolicyVersions` again and specify the value of
    #   `TrafficPolicyVersionMarker` in the `TrafficPolicyVersionMarker`
    #   request parameter.
    #
    #   This element is present only if `IsTruncated` is `true`.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you specified for the `maxitems` parameter in the
    #   call to `ListTrafficPolicyVersions` that produced the current
    #   response.
    #   @return [Integer]
    #
    class ListTrafficPolicyVersionsResponse < Struct.new(
      :traffic_policies,
      :is_truncated,
      :traffic_policy_version_marker,
      :max_items)
      include Aws::Structure
    end

    # A complex type that contains information about that can be associated
    # with your hosted zone.
    #
    # @note When making an API call, you may pass ListVPCAssociationAuthorizationsRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         next_token: "PaginationToken",
    #         max_results: "MaxResults",
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone for which you want a list of VPCs that can
    #   be associated with the hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   *Optional*\: If a response includes a `NextToken` element, there are
    #   more VPCs that can be associated with the specified hosted zone. To
    #   get the next page of results, submit another request, and include
    #   the value of the `NextToken` element in from the response in the
    #   `NextToken` parameter in another `ListVPCAssociationAuthorizations`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   *Optional*\: An integer that specifies the maximum number of VPCs
    #   that you want Amazon Route 53 to return.
    #   @return [String]
    #
    class ListVPCAssociationAuthorizationsRequest < Struct.new(
      :hosted_zone_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # A complex type that contains the response information for the request.
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that you can associate the listed VPCs
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When the response includes a `NextToken` element, there are more
    #   VPCs that can be associated with the specified hosted zone. To get
    #   the next page of VPCs, submit another
    #   `ListVPCAssociationAuthorizations` request, and include the value of
    #   the `NextToken` element from the response in the `NextToken` request
    #   parameter:
    #
    #   `/2013-04-01/hostedzone/hosted zone
    #   ID/authorizevpcassociation?MaxItems=VPCs per page&NextToken= `
    #   @return [String]
    #
    # @!attribute [rw] vp_cs
    #   The list of VPCs that are authorized to be associated with the
    #   specified hosted zone.
    #   @return [Array<Types::VPC>]
    #
    class ListVPCAssociationAuthorizationsResponse < Struct.new(
      :hosted_zone_id,
      :next_token,
      :vp_cs)
      include Aws::Structure
    end

    # Information specific to the resource record.
    #
    # <note markdown="1"> If you are creating an alias resource record set, omit
    # `ResourceRecord`.
    #
    #  </note>
    #
    # @note When making an API call, you may pass ResourceRecord
    #   data as a hash:
    #
    #       {
    #         value: "RData", # required
    #       }
    #
    # @!attribute [rw] value
    #   The current or new DNS record value, not to exceed 4,000 characters.
    #   In the case of a `DELETE` action, if the current value does not
    #   match the actual value, an error is returned. For descriptions about
    #   how to format `Value` for different record types, see [Supported DNS
    #   Resource Record Types][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   You can specify more than one value for all record types except
    #   `CNAME` and `SOA`.
    #
    #   <note markdown="1"> If you are creating an alias resource record set, omit `Value`.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html
    #   @return [String]
    #
    class ResourceRecord < Struct.new(
      :value)
      include Aws::Structure
    end

    # Information about the resource record set to create or delete.
    #
    # @note When making an API call, you may pass ResourceRecordSet
    #   data as a hash:
    #
    #       {
    #         name: "DNSName", # required
    #         type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         set_identifier: "ResourceRecordSetIdentifier",
    #         weight: 1,
    #         region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1, ap-south-1
    #         geo_location: {
    #           continent_code: "GeoLocationContinentCode",
    #           country_code: "GeoLocationCountryCode",
    #           subdivision_code: "GeoLocationSubdivisionCode",
    #         },
    #         failover: "PRIMARY", # accepts PRIMARY, SECONDARY
    #         ttl: 1,
    #         resource_records: [
    #           {
    #             value: "RData", # required
    #           },
    #         ],
    #         alias_target: {
    #           hosted_zone_id: "ResourceId", # required
    #           dns_name: "DNSName", # required
    #           evaluate_target_health: false, # required
    #         },
    #         health_check_id: "HealthCheckId",
    #         traffic_policy_instance_id: "TrafficPolicyInstanceId",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the domain you want to perform the action on.
    #
    #   Enter a fully qualified domain name, for example, `www.example.com`.
    #   You can optionally include a trailing dot. If you omit the trailing
    #   dot, Amazon Route 53 still assumes that the domain name that you
    #   specify is fully qualified. This means that Amazon Route 53 treats
    #   `www.example.com` (without a trailing dot) and `www.example.com.`
    #   (with a trailing dot) as identical.
    #
    #   For information about how to specify characters other than `a-z`,
    #   `0-9`, and `-` (hyphen) and how to specify internationalized domain
    #   names, see [DNS Domain Name Format][1] in the *Amazon Route 53
    #   Developer Guide*.
    #
    #   You can use the asterisk (*) wildcard to replace the leftmost label
    #   in a domain name. For example, `*.example.com`. Note the following:
    #
    #   * The * must replace the entire label. For example, you can't
    #     specify `*prod.example.com` or `prod*.example.com`.
    #
    #   * The * can't replace any of the middle labels, for example,
    #     marketing.*.example.com.
    #
    #   * If you include * in any position other than the leftmost label in
    #     a domain name, DNS treats it as an * character (ASCII 42), not as
    #     a wildcard.
    #
    #     You can't use the * wildcard for resource records sets that have
    #     a type of NS.
    #
    #   You can use the * wildcard as the leftmost label in a domain name,
    #   for example, `*.example.com`. You can't use an * for one of the
    #   middle labels, for example, `marketing.*.example.com`. In addition,
    #   the * must replace the entire label; for example, you can't
    #   specify `prod*.example.com`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The DNS record type. For information about different record types
    #   and how data is encoded for them, see [Supported DNS Resource Record
    #   Types][1] in the *Amazon Route 53 Developer Guide*.
    #
    #   Valid values for basic resource record sets: `A` \| `AAAA` \|
    #   `CNAME` \| `MX` \| `NAPTR` \| `NS` \| `PTR` \| `SOA` \| `SPF` \|
    #   `SRV` \| `TXT`
    #
    #   Values for weighted, latency, geolocation, and failover resource
    #   record sets: `A` \| `AAAA` \| `CNAME` \| `MX` \| `NAPTR` \| `PTR` \|
    #   `SPF` \| `SRV` \| `TXT`. When creating a group of weighted, latency,
    #   geolocation, or failover resource record sets, specify the same
    #   value for all of the resource record sets in the group.
    #
    #   <note markdown="1"> SPF records were formerly used to verify the identity of the sender
    #   of email messages. However, we no longer recommend that you create
    #   resource record sets for which the value of `Type` is `SPF`. RFC
    #   7208, *Sender Policy Framework (SPF) for Authorizing Use of Domains
    #   in Email, Version 1*, has been updated to say, "...\[I\]ts
    #   existence and mechanism defined in \[RFC4408\] have led to some
    #   interoperability issues. Accordingly, its use is no longer
    #   appropriate for SPF version 1; implementations are not to use it."
    #   In RFC 7208, see section 14.1, [The SPF DNS Record Type][2].
    #
    #    </note>
    #
    #   Values for alias resource record sets:
    #
    #   * **CloudFront distributions:** `A`
    #
    #     If IPv6 is enabled for the distribution, create two resource
    #     record sets to route traffic to your distribution, one with a
    #     value of `A` and one with a value of `AAAA`.
    #
    #   * **AWS Elastic Beanstalk environment that has a regionalized
    #     subdomain**\: `A`
    #
    #   * **ELB load balancers:** `A` \| `AAAA`
    #
    #   * **Amazon S3 buckets:** `A`
    #
    #   * **Another resource record set in this hosted zone:** Specify the
    #     type of the resource record set for which you're creating the
    #     alias. Specify any value except `NS` or `SOA`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html
    #   [2]: http://tools.ietf.org/html/rfc7208#section-14.1
    #   @return [String]
    #
    # @!attribute [rw] set_identifier
    #   *Weighted, Latency, Geo, and Failover resource record sets only:* An
    #   identifier that differentiates among multiple resource record sets
    #   that have the same combination of DNS name and type. The value of
    #   `SetIdentifier` must be unique for each resource record set that has
    #   the same combination of DNS name and type. Omit `SetIdentifier` for
    #   any other types of record sets.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   *Weighted resource record sets only:* Among resource record sets
    #   that have the same combination of DNS name and type, a value that
    #   determines the proportion of DNS queries that Amazon Route 53
    #   responds to using the current resource record set. Amazon Route 53
    #   calculates the sum of the weights for the resource record sets that
    #   have the same combination of DNS name and type. Amazon Route 53 then
    #   responds to queries based on the ratio of a resource's weight to
    #   the total. Note the following:
    #
    #   * You must specify a value for the `Weight` element for every
    #     weighted resource record set.
    #
    #   * You can only specify one `ResourceRecord` per weighted resource
    #     record set.
    #
    #   * You can't create latency, failover, or geolocation resource
    #     record sets that have the same values for the `Name` and `Type`
    #     elements as weighted resource record sets.
    #
    #   * You can create a maximum of 100 weighted resource record sets that
    #     have the same values for the `Name` and `Type` elements.
    #
    #   * For weighted (but not weighted alias) resource record sets, if you
    #     set `Weight` to `0` for a resource record set, Amazon Route 53
    #     never responds to queries with the applicable value for that
    #     resource record set. However, if you set `Weight` to `0` for all
    #     resource record sets that have the same combination of DNS name
    #     and type, traffic is routed to all resources with equal
    #     probability.
    #
    #     The effect of setting `Weight` to `0` is different when you
    #     associate health checks with weighted resource record sets. For
    #     more information, see [Options for Configuring Amazon Route 53
    #     Active-Active and Active-Passive Failover][1] in the *Amazon Route
    #     53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-configuring-options.html
    #   @return [Integer]
    #
    # @!attribute [rw] region
    #   *Latency-based resource record sets only:* The Amazon EC2 Region
    #   where the resource that is specified in this resource record set
    #   resides. The resource typically is an AWS resource, such as an EC2
    #   instance or an ELB load balancer, and is referred to by an IP
    #   address or a DNS domain name, depending on the record type.
    #
    #   <note markdown="1"> Creating latency and latency alias resource record sets in private
    #   hosted zones is not supported.
    #
    #    </note>
    #
    #   When Amazon Route 53 receives a DNS query for a domain name and type
    #   for which you have created latency resource record sets, Amazon
    #   Route 53 selects the latency resource record set that has the lowest
    #   latency between the end user and the associated Amazon EC2 Region.
    #   Amazon Route 53 then returns the value that is associated with the
    #   selected resource record set.
    #
    #   Note the following:
    #
    #   * You can only specify one `ResourceRecord` per latency resource
    #     record set.
    #
    #   * You can only create one latency resource record set for each
    #     Amazon EC2 Region.
    #
    #   * You are not required to create latency resource record sets for
    #     all Amazon EC2 Regions. Amazon Route 53 will choose the region
    #     with the best latency from among the regions for which you create
    #     latency resource record sets.
    #
    #   * You can't create non-latency resource record sets that have the
    #     same values for the `Name` and `Type` elements as latency resource
    #     record sets.
    #   @return [String]
    #
    # @!attribute [rw] geo_location
    #   *Geo location resource record sets only:* A complex type that lets
    #   you control how Amazon Route 53 responds to DNS queries based on the
    #   geographic origin of the query. For example, if you want all queries
    #   from Africa to be routed to a web server with an IP address of
    #   `192.0.2.111`, create a resource record set with a `Type` of `A` and
    #   a `ContinentCode` of `AF`.
    #
    #   <note markdown="1"> Creating geolocation and geolocation alias resource record sets in
    #   private hosted zones is not supported.
    #
    #    </note>
    #
    #   If you create separate resource record sets for overlapping
    #   geographic regions (for example, one resource record set for a
    #   continent and one for a country on the same continent), priority
    #   goes to the smallest geographic region. This allows you to route
    #   most queries for a continent to one resource and to route queries
    #   for a country on that continent to a different resource.
    #
    #   You can't create two geolocation resource record sets that specify
    #   the same geographic location.
    #
    #   The value `*` in the `CountryCode` element matches all geographic
    #   locations that aren't specified in other geolocation resource
    #   record sets that have the same values for the `Name` and `Type`
    #   elements.
    #
    #   Geolocation works by mapping IP addresses to locations. However,
    #   some IP addresses aren't mapped to geographic locations, so even if
    #   you create geolocation resource record sets that cover all seven
    #   continents, Amazon Route 53 will receive some DNS queries from
    #   locations that it can't identify. We recommend that you create a
    #   resource record set for which the value of `CountryCode` is `*`,
    #   which handles both queries that come from locations for which you
    #   haven't created geolocation resource record sets and queries from
    #   IP addresses that aren't mapped to a location. If you don't create
    #   a `*` resource record set, Amazon Route 53 returns a "no answer"
    #   response for queries from those locations.
    #
    #   You can't create non-geolocation resource record sets that have the
    #   same values for the `Name` and `Type` elements as geolocation
    #   resource record sets.
    #   @return [Types::GeoLocation]
    #
    # @!attribute [rw] failover
    #   *Failover resource record sets only:* To configure failover, you add
    #   the `Failover` element to two resource record sets. For one resource
    #   record set, you specify `PRIMARY` as the value for `Failover`; for
    #   the other resource record set, you specify `SECONDARY`. In addition,
    #   you include the `HealthCheckId` element and specify the health check
    #   that you want Amazon Route 53 to perform for each resource record
    #   set.
    #
    #   Except where noted, the following failover behaviors assume that you
    #   have included the `HealthCheckId` element in both resource record
    #   sets:
    #
    #   * When the primary resource record set is healthy, Amazon Route 53
    #     responds to DNS queries with the applicable value from the primary
    #     resource record set regardless of the health of the secondary
    #     resource record set.
    #
    #   * When the primary resource record set is unhealthy and the
    #     secondary resource record set is healthy, Amazon Route 53 responds
    #     to DNS queries with the applicable value from the secondary
    #     resource record set.
    #
    #   * When the secondary resource record set is unhealthy, Amazon Route
    #     53 responds to DNS queries with the applicable value from the
    #     primary resource record set regardless of the health of the
    #     primary resource record set.
    #
    #   * If you omit the `HealthCheckId` element for the secondary resource
    #     record set, and if the primary resource record set is unhealthy,
    #     Amazon Route 53 always responds to DNS queries with the applicable
    #     value from the secondary resource record set. This is true
    #     regardless of the health of the associated endpoint.
    #
    #   You can't create non-failover resource record sets that have the
    #   same values for the `Name` and `Type` elements as failover resource
    #   record sets.
    #
    #   For failover alias resource record sets, you must also include the
    #   `EvaluateTargetHealth` element and set the value to true.
    #
    #   For more information about configuring failover for Amazon Route 53,
    #   see the following topics in the *Amazon Route 53 Developer Guide*\:
    #
    #   * [Amazon Route 53 Health Checks and DNS Failover][1]
    #
    #   * [Configuring Failover in a Private Hosted Zone][2]
    #
    #   Valid values: `PRIMARY` \| `SECONDARY`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The resource record cache time to live (TTL), in seconds. Note the
    #   following:
    #
    #   * If you're creating an alias resource record set, omit `TTL`.
    #     Amazon Route 53 uses the value of `TTL` for the alias target.
    #
    #   * If you're associating this resource record set with a health
    #     check (if you're adding a `HealthCheckId` element), we recommend
    #     that you specify a `TTL` of 60 seconds or less so clients respond
    #     quickly to changes in health status.
    #
    #   * All of the resource record sets in a group of weighted, latency,
    #     geolocation, or failover resource record sets must have the same
    #     value for `TTL`.
    #
    #   * If a group of weighted resource record sets includes one or more
    #     weighted alias resource record sets for which the alias target is
    #     an ELB load balancer, we recommend that you specify a `TTL` of 60
    #     seconds for all of the non-alias weighted resource record sets
    #     that have the same name and type. Values other than 60 seconds
    #     (the TTL for load balancers) will change the effect of the values
    #     that you specify for `Weight`.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_records
    #   Information about the resource records to act upon.
    #
    #   <note markdown="1"> If you are creating an alias resource record set, omit
    #   `ResourceRecords`.
    #
    #    </note>
    #   @return [Array<Types::ResourceRecord>]
    #
    # @!attribute [rw] alias_target
    #   *Alias resource record sets only:* Information about the CloudFront
    #   distribution, AWS Elastic Beanstalk environment, ELB load balancer,
    #   Amazon S3 bucket, or Amazon Route 53 resource record set to which
    #   you are redirecting queries. The AWS Elastic Beanstalk environment
    #   must have a regionalized subdomain.
    #
    #   If you're creating resource records sets for a private hosted zone,
    #   note the following:
    #
    #   * You can't create alias resource record sets for CloudFront
    #     distributions in a private hosted zone.
    #
    #   * Creating geolocation alias resource record sets or latency alias
    #     resource record sets in a private hosted zone is unsupported.
    #
    #   * For information about creating failover resource record sets in a
    #     private hosted zone, see [Configuring Failover in a Private Hosted
    #     Zone][1] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html
    #   @return [Types::AliasTarget]
    #
    # @!attribute [rw] health_check_id
    #   If you want Amazon Route 53 to return this resource record set in
    #   response to a DNS query only when a health check is passing, include
    #   the `HealthCheckId` element and specify the ID of the applicable
    #   health check.
    #
    #   Amazon Route 53 determines whether a resource record set is healthy
    #   based on one of the following:
    #
    #   * By periodically sending a request to the endpoint that is
    #     specified in the health check
    #
    #   * By aggregating the status of a specified group of health checks
    #     (calculated health checks)
    #
    #   * By determining the current state of a CloudWatch alarm (CloudWatch
    #     metric health checks)
    #
    #   For information about how Amazon Route 53 determines whether a
    #   health check is healthy, see CreateHealthCheck.
    #
    #   The `HealthCheckId` element is only useful when Amazon Route 53 is
    #   choosing between two or more resource record sets to respond to a
    #   DNS query, and you want Amazon Route 53 to base the choice in part
    #   on the status of a health check. Configuring health checks only
    #   makes sense in the following configurations:
    #
    #   * You're checking the health of the resource record sets in a
    #     weighted, latency, geolocation, or failover resource record set,
    #     and you specify health check IDs for all of the resource record
    #     sets. If the health check for one resource record set specifies an
    #     endpoint that is not healthy, Amazon Route 53 stops responding to
    #     queries using the value for that resource record set.
    #
    #   * You set `EvaluateTargetHealth` to true for the resource record
    #     sets in an alias, weighted alias, latency alias, geolocation
    #     alias, or failover alias resource record set, and you specify
    #     health check IDs for all of the resource record sets that are
    #     referenced by the alias resource record sets.
    #
    #   Amazon Route 53 doesn't check the health of the endpoint specified
    #   in the resource record set, for example, the endpoint specified by
    #   the IP address in the `Value` element. When you add a
    #   `HealthCheckId` element to a resource record set, Amazon Route 53
    #   checks the health of the endpoint that you specified in the health
    #   check.
    #
    #   For geolocation resource record sets, if an endpoint is unhealthy,
    #   Amazon Route 53 looks for a resource record set for the larger,
    #   associated geographic region. For example, suppose you have resource
    #   record sets for a state in the United States, for the United States,
    #   for North America, and for all locations. If the endpoint for the
    #   state resource record set is unhealthy, Amazon Route 53 checks the
    #   resource record sets for the United States, for North America, and
    #   for all locations (a resource record set for which the value of
    #   `CountryCode` is `*`), in that order, until it finds a resource
    #   record set for which the endpoint is healthy.
    #
    #   If your health checks specify the endpoint only by domain name, we
    #   recommend that you create a separate health check for each endpoint.
    #   For example, create a health check for each `HTTP` server that is
    #   serving content for `www.example.com`. For the value of
    #   `FullyQualifiedDomainName`, specify the domain name of the server
    #   (such as `us-east-1-www.example.com`), not the name of the resource
    #   record sets (example.com).
    #
    #   n this configuration, if you create a health check for which the
    #   value of `FullyQualifiedDomainName` matches the name of the resource
    #   record sets and then associate the health check with those resource
    #   record sets, health check results will be unpredictable.
    #
    #   For more information, see the following topics in the *Amazon Route
    #   53 Developer Guide*\:
    #
    #   * [Amazon Route 53 Health Checks and DNS Failover][1]
    #
    #   * [Configuring Failover in a Private Hosted Zone][2]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover.html
    #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-private-hosted-zones.html
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_instance_id
    #   When you create a traffic policy instance, Amazon Route 53
    #   automatically creates a resource record set.
    #   `TrafficPolicyInstanceId` is the ID of the traffic policy instance
    #   that Amazon Route 53 created this resource record set for.
    #
    #   To delete the resource record set that is associated with a traffic
    #   policy instance, use `DeleteTrafficPolicyInstance`. Amazon Route 53
    #   will delete the resource record set automatically. If you delete the
    #   resource record set by using `ChangeResourceRecordSets`, Amazon
    #   Route 53 doesn't automatically delete the traffic policy instance,
    #   and you'll continue to be charged for it even though it's no
    #   longer in use.
    #   @return [String]
    #
    class ResourceRecordSet < Struct.new(
      :name,
      :type,
      :set_identifier,
      :weight,
      :region,
      :geo_location,
      :failover,
      :ttl,
      :resource_records,
      :alias_target,
      :health_check_id,
      :traffic_policy_instance_id)
      include Aws::Structure
    end

    # A complex type containing a resource and its associated tags.
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #
    #   * The resource type for health checks is `healthcheck`.
    #
    #   * The resource type for hosted zones is `hostedzone`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID for the specified resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the specified resource.
    #   @return [Array<Types::Tag>]
    #
    class ResourceTagSet < Struct.new(
      :resource_type,
      :resource_id,
      :tags)
      include Aws::Structure
    end

    # A complex type that contains the status that one Amazon Route 53
    # health checker reports and the time of the health check.
    #
    # @!attribute [rw] status
    #   A description of the status of the health check endpoint as reported
    #   by one of the Amazon Route 53 health checkers.
    #   @return [String]
    #
    # @!attribute [rw] checked_time
    #   The time at which the health checker performed the health check in
    #   [ISO 8601 format][1] and Coordinated Universal Time (UTC). For
    #   example, the value `2014-10-27T17:48:16.751Z` represents October 27,
    #   2014 at 17:48:16.751 UTC.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    class StatusReport < Struct.new(
      :status,
      :checked_time)
      include Aws::Structure
    end

    # A complex type that contains information about a tag that you want to
    # add or edit for the specified health check or hosted zone.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The value of `Key` depends on the operation that you want to
    #   perform:
    #
    #   * **Add a tag to a health check or hosted zone**\: `Key` is the name
    #     that you want to give the new tag.
    #
    #   * **Edit a tag**\: `Key` is the name of the tag whose `Value`
    #     element you want to remove.
    #
    #   * <b> Delete a key</b>\: `Key` is the name of the tag you want to
    #     remove.
    #
    #   * **Give a name to a health check**\: Edit the default `Name` tag.
    #     In the Amazon Route 53 console, the list of your health checks
    #     includes a **Name** column that lets you see the name that you've
    #     given to each health check.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of `Value` depends on the operation that you want to
    #   perform:
    #
    #   * **Add a tag to a health check or hosted zone**\: `Value` is the
    #     value that you want to give the new tag.
    #
    #   * **Edit a tag**\: `Value` is the new value that you want to assign
    #     the tag.
    #   @return [String]
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # Gets the value that Amazon Route 53 returns in response to a DNS
    # request for a specified record name and type. You can optionally
    # specify the IP address of a DNS resolver, an EDNS0 client subnet IP
    # address, and a subnet mask.
    #
    # **Parameters**
    #
    # hostedzoneid
    #
    # : The ID of the hosted zone that you want Amazon Route 53 to simulate
    #   a query for.
    #
    # recordname
    #
    # : The name of the resource record set that you want Amazon Route 53 to
    #   simulate a query for.
    #
    # recordtype
    #
    # : The type of the resource record set.
    #
    # resolverip (optional)
    #
    # : If you want to simulate a request from a specific DNS resolver,
    #   specify the IP address for that resolver. If you omit this value,
    #   `TestDNSAnswer` uses the IP address of a DNS resolver in the AWS US
    #   East region.
    #
    # edns0clientsubnetip (optional)
    #
    # : If the resolver that you specified for `resolverip` supports EDNS0,
    #   specify the IP address of a client in the applicable location.
    #
    # edns0clientsubnetmask (optional)
    #
    # : If you specify an IP address for `edns0clientsubnetip`, you can
    #   optionally specify the number of bits of the IP address that you
    #   want the checking tool to include in the DNS query. For example, if
    #   you specify `192.0.2.44` for `edns0clientsubnetip` and `24` for
    #   `edns0clientsubnetmask`, the checking tool will simulate a request
    #   from `192.0.2.0/24`. The default value is 24 bits.
    #
    # @note When making an API call, you may pass TestDNSAnswerRequest
    #   data as a hash:
    #
    #       {
    #         hosted_zone_id: "ResourceId", # required
    #         record_name: "DNSName", # required
    #         record_type: "SOA", # required, accepts SOA, A, TXT, NS, CNAME, MX, NAPTR, PTR, SRV, SPF, AAAA
    #         resolver_ip: "IPAddress",
    #         edns0_client_subnet_ip: "IPAddress",
    #         edns0_client_subnet_mask: "SubnetMask",
    #       }
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that you want Amazon Route 53 to simulate
    #   a query for.
    #   @return [String]
    #
    # @!attribute [rw] record_name
    #   The name of the resource record set that you want Amazon Route 53 to
    #   simulate a query for.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the resource record set.
    #   @return [String]
    #
    # @!attribute [rw] resolver_ip
    #   If you want to simulate a request from a specific DNS resolver,
    #   specify the IP address for that resolver. If you omit this value,
    #   `TestDnsAnswer` uses the IP address of a DNS resolver in the AWS US
    #   East region.
    #   @return [String]
    #
    # @!attribute [rw] edns0_client_subnet_ip
    #   If the resolver that you specified for resolverip supports EDNS0,
    #   specify the IP address of a client in the applicable location.
    #   @return [String]
    #
    # @!attribute [rw] edns0_client_subnet_mask
    #   If you specify an IP address for `edns0clientsubnetip`, you can
    #   optionally specify the number of bits of the IP address that you
    #   want the checking tool to include in the DNS query. For example, if
    #   you specify `192.0.2.44` for `edns0clientsubnetip` and `24` for
    #   `edns0clientsubnetmask`, the checking tool will simulate a request
    #   from 192.0.2.0/24. The default value is 24 bits.
    #   @return [String]
    #
    class TestDNSAnswerRequest < Struct.new(
      :hosted_zone_id,
      :record_name,
      :record_type,
      :resolver_ip,
      :edns0_client_subnet_ip,
      :edns0_client_subnet_mask)
      include Aws::Structure
    end

    # A complex type that contains the response to a `TestDNSAnswer`
    # request.
    #
    # @!attribute [rw] nameserver
    #   The Amazon Route 53 name server used to respond to the request.
    #   @return [String]
    #
    # @!attribute [rw] record_name
    #   The name of the resource record set that you submitted a request
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] record_type
    #   The type of the resource record set that you submitted a request
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] record_data
    #   A list that contains values that Amazon Route 53 returned for this
    #   resource record set.
    #   @return [Array<String>]
    #
    # @!attribute [rw] response_code
    #   A code that indicates whether the request is valid or not. The most
    #   common response code is `NOERROR`, meaning that the request is
    #   valid. If the response is not valid, Amazon Route 53 returns a
    #   response code that describes the error. For a list of possible
    #   response codes, see [DNS RCODES][1] on the IANA website.
    #
    #
    #
    #   [1]: http://www.iana.org/assignments/dns-parameters/dns-parameters.xhtml#dns-parameters-6
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol that Amazon Route 53 used to respond to the request,
    #   either `UDP` or `TCP`.
    #   @return [String]
    #
    class TestDNSAnswerResponse < Struct.new(
      :nameserver,
      :record_name,
      :record_type,
      :record_data,
      :response_code,
      :protocol)
      include Aws::Structure
    end

    # A complex type that contains settings for a traffic policy.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Route 53 assigned to a traffic policy when you
    #   created it.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number that Amazon Route 53 assigns to a traffic policy.
    #   For a new traffic policy, the value of `Version` is always 1.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name that you specified when you created the traffic policy.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The DNS type of the resource record sets that Amazon Route 53
    #   creates when you use a traffic policy to create a traffic policy
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The definition of a traffic policy in JSON format. You specify the
    #   JSON document to use for a new traffic policy in the
    #   `CreateTrafficPolicy` request. For more information about the JSON
    #   format, see [Traffic Policy Document Format][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment that you specify in the `CreateTrafficPolicy` request,
    #   if any.
    #   @return [String]
    #
    class TrafficPolicy < Struct.new(
      :id,
      :version,
      :name,
      :type,
      :document,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains settings for the new traffic policy
    # instance.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Route 53 assigned to the new traffic policy
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of the hosted zone that Amazon Route 53 created resource
    #   record sets in.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The DNS name, such as www.example.com, for which Amazon Route 53
    #   responds to queries by using the resource record sets that are
    #   associated with this traffic policy instance.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The TTL that Amazon Route 53 assigned to all of the resource record
    #   sets that it created in the specified hosted zone.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The value of `State` is one of the following values:
    #
    #   Applied
    #
    #   : Amazon Route 53 has finished creating resource record sets, and
    #     changes have propagated to all Amazon Route 53 edge locations.
    #
    #   Creating
    #
    #   : Amazon Route 53 is creating the resource record sets. Use
    #     `GetTrafficPolicyInstance` to confirm that the
    #     `CreateTrafficPolicyInstance` request completed successfully.
    #
    #   Failed
    #
    #   : Amazon Route 53 wasn't able to create or update the resource
    #     record sets. When the value of `State` is `Failed`, see `Message`
    #     for an explanation of what caused the request to fail.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If `State` is `Failed`, an explanation of the reason for the
    #   failure. If `State` is another value, `Message` is empty.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The ID of the traffic policy that Amazon Route 53 used to create
    #   resource record sets in the specified hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_version
    #   The version of the traffic policy that Amazon Route 53 used to
    #   create resource record sets in the specified hosted zone.
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_policy_type
    #   The DNS type that Amazon Route 53 assigned to all of the resource
    #   record sets that it created for this traffic policy instance.
    #   @return [String]
    #
    class TrafficPolicyInstance < Struct.new(
      :id,
      :hosted_zone_id,
      :name,
      :ttl,
      :state,
      :message,
      :traffic_policy_id,
      :traffic_policy_version,
      :traffic_policy_type)
      include Aws::Structure
    end

    # A complex type that contains information about the latest version of
    # one traffic policy that is associated with the current AWS account.
    #
    # @!attribute [rw] id
    #   The ID that Amazon Route 53 assigned to the traffic policy when you
    #   created it.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name that you specified for the traffic policy when you created
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The DNS type of the resource record sets that Amazon Route 53
    #   creates when you use a traffic policy to create a traffic policy
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The version number of the latest version of the traffic policy.
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_policy_count
    #   The number of traffic policies that are associated with the current
    #   AWS account.
    #   @return [Integer]
    #
    class TrafficPolicySummary < Struct.new(
      :id,
      :name,
      :type,
      :latest_version,
      :traffic_policy_count)
      include Aws::Structure
    end

    # A complex type that contains the health check request information.
    #
    # @note When making an API call, you may pass UpdateHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         health_check_id: "HealthCheckId", # required
    #         health_check_version: 1,
    #         ip_address: "IPAddress",
    #         port: 1,
    #         resource_path: "ResourcePath",
    #         fully_qualified_domain_name: "FullyQualifiedDomainName",
    #         search_string: "SearchString",
    #         failure_threshold: 1,
    #         inverted: false,
    #         health_threshold: 1,
    #         child_health_checks: ["HealthCheckId"],
    #         enable_sni: false,
    #         regions: ["us-east-1"], # accepts us-east-1, us-west-1, us-west-2, eu-west-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1
    #         alarm_identifier: {
    #           region: "us-east-1", # required, accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-central-1, eu-west-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, sa-east-1
    #           name: "AlarmName", # required
    #         },
    #         insufficient_data_health_status: "Healthy", # accepts Healthy, Unhealthy, LastKnownStatus
    #       }
    #
    # @!attribute [rw] health_check_id
    #   The ID for the health check for which you want detailed information.
    #   When you created the health check, `CreateHealthCheck` returned the
    #   ID in the response, in the `HealthCheckId` element.
    #   @return [String]
    #
    # @!attribute [rw] health_check_version
    #   A sequential counter that Amazon Route 53 sets to `1` when you
    #   create a health check and increments by `1` each time you update
    #   settings for the health check.
    #
    #   We recommend that you use `GetHealthCheck` or `ListHealthChecks` to
    #   get the current value of `HealthCheckVersion` for the health check
    #   that you want to update, and that you include that value in your
    #   `UpdateHealthCheck` request. This prevents Amazon Route 53 from
    #   overwriting an intervening update:
    #
    #   * f the value in the `UpdateHealthCheck` request matches the value
    #     of `HealthCheckVersion` in the health check, Amazon Route 53
    #     updates the health check with the new settings.
    #
    #   * If the value of `HealthCheckVersion` in the health check is
    #     greater, the health check was changed after you got the version
    #     number. Amazon Route 53 does not update the health check, and it
    #     returns a `HealthCheckVersionMismatch` error.
    #   @return [Integer]
    #
    # @!attribute [rw] ip_address
    #   The IPv4 or IPv6 IP address for the endpoint that you want Amazon
    #   Route 53 to perform health checks on. If you don't specify a value
    #   for `IPAddress`, Amazon Route 53 sends a DNS request to resolve the
    #   domain name that you specify in `FullyQualifiedDomainName` at the
    #   interval that you specify in `RequestInterval`. Using an IP address
    #   that is returned by DNS, Amazon Route 53 then checks the health of
    #   the endpoint.
    #
    #   If the endpoint is an EC2 instance, we recommend that you create an
    #   Elastic IP address, associate it with your EC2 instance, and specify
    #   the Elastic IP address for `IPAddress`. This ensures that the IP
    #   address of your instance never changes. For more information, see
    #   [Elastic IP Addresses (EIP)][1] in the *Amazon EC2 User Guide for
    #   Linux Instances*.
    #
    #   <note markdown="1"> If a health check already has a value for `IPAddress`, you can
    #   change the value. However, you can't update an existing health
    #   check to add or remove the value of `IPAddress`.
    #
    #    </note>
    #
    #   For more information, see
    #   UpdateHealthCheckRequest$FullyQualifiedDomainName.
    #
    #   Constraints: Amazon Route 53 can't check the health of endpoints
    #   for which the IP address is in local, private, non-routable, or
    #   multicast ranges. For more information about IP addresses for which
    #   you can't create health checks, see the following documents:
    #
    #   * [RFC 5735, Special Use IPv4 Addresses][2]
    #
    #   * [RFC 6598, IANA-Reserved IPv4 Prefix for Shared Address Space][3]
    #
    #   * [RFC 5156, Special-Use IPv6 Addresses][4]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
    #   [2]: https://tools.ietf.org/html/rfc5735
    #   [3]: https://tools.ietf.org/html/rfc6598
    #   [4]: https://tools.ietf.org/html/rfc5156
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port on the endpoint on which you want Amazon Route 53 to
    #   perform health checks.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_path
    #   The path that you want Amazon Route 53 to request when performing
    #   health checks. The path can be any value for which your endpoint
    #   will return an HTTP status code of 2xx or 3xx when the endpoint is
    #   healthy, for example the file /docs/route53-health-check.html.
    #
    #   Specify this value only if you want to change it.
    #   @return [String]
    #
    # @!attribute [rw] fully_qualified_domain_name
    #   Amazon Route 53 behavior depends on whether you specify a value for
    #   `IPAddress`.
    #
    #   <note markdown="1"> If a health check already has a value for `IPAddress`, you can
    #   change the value. However, you can't update an existing health
    #   check to add or remove the value of `IPAddress`.
    #
    #    </note>
    #
    #   **If you specify a value for** `IPAddress`\:
    #
    #   Amazon Route 53 sends health check requests to the specified IPv4 or
    #   IPv6 address and passes the value of `FullyQualifiedDomainName` in
    #   the `Host` header for all health checks except TCP health checks.
    #   This is typically the fully qualified DNS name of the endpoint on
    #   which you want Amazon Route 53 to perform health checks.
    #
    #   When Amazon Route 53 checks the health of an endpoint, here is how
    #   it constructs the `Host` header:
    #
    #   * If you specify a value of `80` for `Port` and `HTTP` or
    #     `HTTP_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the `Host` header.
    #
    #   * If you specify a value of `443` for `Port` and `HTTPS` or
    #     `HTTPS_STR_MATCH` for `Type`, Amazon Route 53 passes the value of
    #     `FullyQualifiedDomainName` to the endpoint in the Host header.
    #
    #   * If you specify another value for `Port` and any value except `TCP`
    #     for `Type`, Amazon Route 53 passes <i>
    #     <code>FullyQualifiedDomainName</code>\:<code>Port</code> </i> to
    #     the endpoint in the Host header.
    #
    #   If you don't specify a value for `FullyQualifiedDomainName`, Amazon
    #   Route 53 substitutes the value of `IPAddress` in the `Host` header
    #   in each of the above cases.
    #
    #   **If you don't specify a value for** `IPAddress`\:
    #
    #   If you don't specify a value for `IPAddress`, Amazon Route 53 sends
    #   a DNS request to the domain that you specify in
    #   `FullyQualifiedDomainName` at the interval you specify in
    #   `RequestInterval`. Using an IPv4 address that is returned by DNS,
    #   Amazon Route 53 then checks the health of the endpoint.
    #
    #   <note markdown="1"> If you don't specify a value for `IPAddress`, Amazon Route 53 uses
    #   only IPv4 to send health checks to the endpoint. If there's no
    #   resource record set with a type of A for the name that you specify
    #   for `FullyQualifiedDomainName`, the health check fails with a "DNS
    #   resolution failed" error.
    #
    #    </note>
    #
    #   If you want to check the health of weighted, latency, or failover
    #   resource record sets and you choose to specify the endpoint only by
    #   `FullyQualifiedDomainName`, we recommend that you create a separate
    #   health check for each endpoint. For example, create a health check
    #   for each HTTP server that is serving content for www.example.com.
    #   For the value of `FullyQualifiedDomainName`, specify the domain name
    #   of the server (such as `us-east-1-www.example.com`), not the name of
    #   the resource record sets (www.example.com).
    #
    #   In this configuration, if the value of `FullyQualifiedDomainName`
    #   matches the name of the resource record sets and you then associate
    #   the health check with those resource record sets, health check
    #   results will be unpredictable.
    #
    #   In addition, if the value of `Type` is `HTTP`, `HTTPS`,
    #   `HTTP_STR_MATCH`, or `HTTPS_STR_MATCH`, Amazon Route 53 passes the
    #   value of `FullyQualifiedDomainName` in the `Host` header, as it does
    #   when you specify a value for `IPAddress`. If the value of `Type` is
    #   `TCP`, Amazon Route 53 doesn't pass a `Host` header.
    #   @return [String]
    #
    # @!attribute [rw] search_string
    #   If the value of `Type` is `HTTP_STR_MATCH` or `HTTP_STR_MATCH`, the
    #   string that you want Amazon Route 53 to search for in the response
    #   body from the specified resource. If the string appears in the
    #   response body, Amazon Route 53 considers the resource healthy. (You
    #   can't change the value of `Type` when you update a health check.)
    #   @return [String]
    #
    # @!attribute [rw] failure_threshold
    #   The number of consecutive health checks that an endpoint must pass
    #   or fail for Amazon Route 53 to change the current status of the
    #   endpoint from unhealthy to healthy or vice versa. For more
    #   information, see [How Amazon Route 53 Determines Whether an Endpoint
    #   Is Healthy][1] in the *Amazon Route 53 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-determining-health-of-endpoints.html
    #   @return [Integer]
    #
    # @!attribute [rw] inverted
    #   Specify whether you want Amazon Route 53 to invert the status of a
    #   health check, for example, to consider a health check unhealthy when
    #   it otherwise would be considered healthy.
    #   @return [Boolean]
    #
    # @!attribute [rw] health_threshold
    #   The number of child health checks that are associated with a
    #   `CALCULATED` health that Amazon Route 53 must consider healthy for
    #   the `CALCULATED` health check to be considered healthy. To specify
    #   the child health checks that you want to associate with a
    #   `CALCULATED` health check, use the `ChildHealthChecks` and
    #   `ChildHealthCheck` elements.
    #
    #   Note the following:
    #
    #   * If you specify a number greater than the number of child health
    #     checks, Amazon Route 53 always considers this health check to be
    #     unhealthy.
    #
    #   * If you specify `0`, Amazon Route 53 always considers this health
    #     check to be healthy.
    #   @return [Integer]
    #
    # @!attribute [rw] child_health_checks
    #   A complex type that contains one `ChildHealthCheck` element for each
    #   health check that you want to associate with a `CALCULATED` health
    #   check.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_sni
    #   Specify whether you want Amazon Route 53 to send the value of
    #   `FullyQualifiedDomainName` to the endpoint in the `client_hello`
    #   message during `TLS` negotiation. This allows the endpoint to
    #   respond to `HTTPS` health check requests with the applicable SSL/TLS
    #   certificate.
    #
    #   Some endpoints require that HTTPS requests include the host name in
    #   the `client_hello` message. If you don't enable SNI, the status of
    #   the health check will be SSL alert `handshake_failure`. A health
    #   check can also have that status for other reasons. If SNI is enabled
    #   and you're still getting the error, check the SSL/TLS configuration
    #   on your endpoint and confirm that your certificate is valid.
    #
    #   The SSL/TLS certificate on your endpoint includes a domain name in
    #   the `Common Name` field and possibly several more in the `Subject
    #   Alternative Names` field. One of the domain names in the certificate
    #   should match the value that you specify for
    #   `FullyQualifiedDomainName`. If the endpoint responds to the
    #   `client_hello` message with a certificate that does not include the
    #   domain name that you specified in `FullyQualifiedDomainName`, a
    #   health checker will retry the handshake. In the second attempt, the
    #   health checker will omit `FullyQualifiedDomainName` from the
    #   `client_hello` message.
    #   @return [Boolean]
    #
    # @!attribute [rw] regions
    #   A complex type that contains one Region element for each region from
    #   which you want Amazon Route 53 health checkers to check the
    #   specified endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] alarm_identifier
    #   A complex type that identifies the CloudWatch alarm that you want
    #   Amazon Route 53 health checkers to use to determine whether this
    #   health check is healthy.
    #   @return [Types::AlarmIdentifier]
    #
    # @!attribute [rw] insufficient_data_health_status
    #   When CloudWatch has insufficient data about the metric to determine
    #   the alarm state, the status that you want Amazon Route 53 to assign
    #   to the health check:
    #
    #   * `Healthy`\: Amazon Route 53 considers the health check to be
    #     healthy.
    #
    #   * `Unhealthy`\: Amazon Route 53 considers the health check to be
    #     unhealthy.
    #
    #   * `LastKnownStatus`\: Amazon Route 53 uses the status of the health
    #     check from the last time CloudWatch had sufficient data to
    #     determine the alarm state. For new health checks that have no last
    #     known status, the default status for the health check is healthy.
    #   @return [String]
    #
    class UpdateHealthCheckRequest < Struct.new(
      :health_check_id,
      :health_check_version,
      :ip_address,
      :port,
      :resource_path,
      :fully_qualified_domain_name,
      :search_string,
      :failure_threshold,
      :inverted,
      :health_threshold,
      :child_health_checks,
      :enable_sni,
      :regions,
      :alarm_identifier,
      :insufficient_data_health_status)
      include Aws::Structure
    end

    # @!attribute [rw] health_check
    #   A complex type that contains information about one health check that
    #   is associated with the current AWS account.
    #   @return [Types::HealthCheck]
    #
    class UpdateHealthCheckResponse < Struct.new(
      :health_check)
      include Aws::Structure
    end

    # A complex type that contains the hosted zone request information.
    #
    # @note When making an API call, you may pass UpdateHostedZoneCommentRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceId", # required
    #         comment: "ResourceDescription",
    #       }
    #
    # @!attribute [rw] id
    #   The ID for the hosted zone for which you want to update the comment.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The new comment for the hosted zone. If you don't specify a value
    #   for `Comment`, Amazon Route 53 deletes the existing value of the
    #   `Comment` element, if any.
    #   @return [String]
    #
    class UpdateHostedZoneCommentRequest < Struct.new(
      :id,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response to the
    # UpdateHostedZoneCommentRequest.
    #
    # @!attribute [rw] hosted_zone
    #   A complex type that contains general information about the hosted
    #   zone.
    #   @return [Types::HostedZone]
    #
    class UpdateHostedZoneCommentResponse < Struct.new(
      :hosted_zone)
      include Aws::Structure
    end

    # A complex type that contains information about the traffic policy for
    # which you want to update the comment.
    #
    # @note When making an API call, you may pass UpdateTrafficPolicyCommentRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyId", # required
    #         version: 1, # required
    #         comment: "TrafficPolicyComment", # required
    #       }
    #
    # @!attribute [rw] id
    #   The value of `Id` for the traffic policy for which you want to
    #   update the comment.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The value of `Version` for the traffic policy for which you want to
    #   update the comment.
    #   @return [Integer]
    #
    # @!attribute [rw] comment
    #   The new comment for the specified traffic policy and version.
    #   @return [String]
    #
    class UpdateTrafficPolicyCommentRequest < Struct.new(
      :id,
      :version,
      :comment)
      include Aws::Structure
    end

    # A complex type that contains the response information for the traffic
    # policy.
    #
    # @!attribute [rw] traffic_policy
    #   A complex type that contains settings for the specified traffic
    #   policy.
    #   @return [Types::TrafficPolicy]
    #
    class UpdateTrafficPolicyCommentResponse < Struct.new(
      :traffic_policy)
      include Aws::Structure
    end

    # A complex type that contains information about the resource record
    # sets that you want to update based on a specified traffic policy
    # instance.
    #
    # @note When making an API call, you may pass UpdateTrafficPolicyInstanceRequest
    #   data as a hash:
    #
    #       {
    #         id: "TrafficPolicyInstanceId", # required
    #         ttl: 1, # required
    #         traffic_policy_id: "TrafficPolicyId", # required
    #         traffic_policy_version: 1, # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the traffic policy instance that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The TTL that you want Amazon Route 53 to assign to all of the
    #   updated resource record sets.
    #   @return [Integer]
    #
    # @!attribute [rw] traffic_policy_id
    #   The ID of the traffic policy that you want Amazon Route 53 to use to
    #   update resource record sets for the specified traffic policy
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_version
    #   The version of the traffic policy that you want Amazon Route 53 to
    #   use to update resource record sets for the specified traffic policy
    #   instance.
    #   @return [Integer]
    #
    class UpdateTrafficPolicyInstanceRequest < Struct.new(
      :id,
      :ttl,
      :traffic_policy_id,
      :traffic_policy_version)
      include Aws::Structure
    end

    # A complex type that contains information about the resource record
    # sets that Amazon Route 53 created based on a specified traffic policy.
    #
    # @!attribute [rw] traffic_policy_instance
    #   A complex type that contains settings for the updated traffic policy
    #   instance.
    #   @return [Types::TrafficPolicyInstance]
    #
    class UpdateTrafficPolicyInstanceResponse < Struct.new(
      :traffic_policy_instance)
      include Aws::Structure
    end

    # A complex type that contains information about an Amazon VPC that is
    # associated with a private hosted zone.
    #
    # @note When making an API call, you may pass VPC
    #   data as a hash:
    #
    #       {
    #         vpc_region: "us-east-1", # accepts us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-central-1, ap-southeast-1, ap-southeast-2, ap-south-1, ap-northeast-1, ap-northeast-2, sa-east-1, cn-north-1
    #         vpc_id: "VPCId",
    #       }
    #
    # @!attribute [rw] vpc_region
    #   The region in which you created the VPC that you want to associate
    #   with the specified Amazon Route 53 hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of an Amazon VPC.
    #   @return [String]
    #
    class VPC < Struct.new(
      :vpc_region,
      :vpc_id)
      include Aws::Structure
    end

  end
end
