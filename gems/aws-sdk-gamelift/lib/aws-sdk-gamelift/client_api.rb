# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameLift
  # @api private
  module ClientApi

    include Seahorse::Model

    Alias = Shapes::StructureShape.new(name: 'Alias')
    AliasId = Shapes::StringShape.new(name: 'AliasId')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    ArnStringModel = Shapes::StringShape.new(name: 'ArnStringModel')
    AwsCredentials = Shapes::StructureShape.new(name: 'AwsCredentials')
    Build = Shapes::StructureShape.new(name: 'Build')
    BuildId = Shapes::StringShape.new(name: 'BuildId')
    BuildList = Shapes::ListShape.new(name: 'BuildList')
    BuildStatus = Shapes::StringShape.new(name: 'BuildStatus')
    ComparisonOperatorType = Shapes::StringShape.new(name: 'ComparisonOperatorType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAliasInput = Shapes::StructureShape.new(name: 'CreateAliasInput')
    CreateAliasOutput = Shapes::StructureShape.new(name: 'CreateAliasOutput')
    CreateBuildInput = Shapes::StructureShape.new(name: 'CreateBuildInput')
    CreateBuildOutput = Shapes::StructureShape.new(name: 'CreateBuildOutput')
    CreateFleetInput = Shapes::StructureShape.new(name: 'CreateFleetInput')
    CreateFleetOutput = Shapes::StructureShape.new(name: 'CreateFleetOutput')
    CreateGameSessionInput = Shapes::StructureShape.new(name: 'CreateGameSessionInput')
    CreateGameSessionOutput = Shapes::StructureShape.new(name: 'CreateGameSessionOutput')
    CreatePlayerSessionInput = Shapes::StructureShape.new(name: 'CreatePlayerSessionInput')
    CreatePlayerSessionOutput = Shapes::StructureShape.new(name: 'CreatePlayerSessionOutput')
    CreatePlayerSessionsInput = Shapes::StructureShape.new(name: 'CreatePlayerSessionsInput')
    CreatePlayerSessionsOutput = Shapes::StructureShape.new(name: 'CreatePlayerSessionsOutput')
    DeleteAliasInput = Shapes::StructureShape.new(name: 'DeleteAliasInput')
    DeleteBuildInput = Shapes::StructureShape.new(name: 'DeleteBuildInput')
    DeleteFleetInput = Shapes::StructureShape.new(name: 'DeleteFleetInput')
    DeleteScalingPolicyInput = Shapes::StructureShape.new(name: 'DeleteScalingPolicyInput')
    DescribeAliasInput = Shapes::StructureShape.new(name: 'DescribeAliasInput')
    DescribeAliasOutput = Shapes::StructureShape.new(name: 'DescribeAliasOutput')
    DescribeBuildInput = Shapes::StructureShape.new(name: 'DescribeBuildInput')
    DescribeBuildOutput = Shapes::StructureShape.new(name: 'DescribeBuildOutput')
    DescribeEC2InstanceLimitsInput = Shapes::StructureShape.new(name: 'DescribeEC2InstanceLimitsInput')
    DescribeEC2InstanceLimitsOutput = Shapes::StructureShape.new(name: 'DescribeEC2InstanceLimitsOutput')
    DescribeFleetAttributesInput = Shapes::StructureShape.new(name: 'DescribeFleetAttributesInput')
    DescribeFleetAttributesOutput = Shapes::StructureShape.new(name: 'DescribeFleetAttributesOutput')
    DescribeFleetCapacityInput = Shapes::StructureShape.new(name: 'DescribeFleetCapacityInput')
    DescribeFleetCapacityOutput = Shapes::StructureShape.new(name: 'DescribeFleetCapacityOutput')
    DescribeFleetEventsInput = Shapes::StructureShape.new(name: 'DescribeFleetEventsInput')
    DescribeFleetEventsOutput = Shapes::StructureShape.new(name: 'DescribeFleetEventsOutput')
    DescribeFleetPortSettingsInput = Shapes::StructureShape.new(name: 'DescribeFleetPortSettingsInput')
    DescribeFleetPortSettingsOutput = Shapes::StructureShape.new(name: 'DescribeFleetPortSettingsOutput')
    DescribeFleetUtilizationInput = Shapes::StructureShape.new(name: 'DescribeFleetUtilizationInput')
    DescribeFleetUtilizationOutput = Shapes::StructureShape.new(name: 'DescribeFleetUtilizationOutput')
    DescribeGameSessionDetailsInput = Shapes::StructureShape.new(name: 'DescribeGameSessionDetailsInput')
    DescribeGameSessionDetailsOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionDetailsOutput')
    DescribeGameSessionsInput = Shapes::StructureShape.new(name: 'DescribeGameSessionsInput')
    DescribeGameSessionsOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionsOutput')
    DescribeInstancesInput = Shapes::StructureShape.new(name: 'DescribeInstancesInput')
    DescribeInstancesOutput = Shapes::StructureShape.new(name: 'DescribeInstancesOutput')
    DescribePlayerSessionsInput = Shapes::StructureShape.new(name: 'DescribePlayerSessionsInput')
    DescribePlayerSessionsOutput = Shapes::StructureShape.new(name: 'DescribePlayerSessionsOutput')
    DescribeRuntimeConfigurationInput = Shapes::StructureShape.new(name: 'DescribeRuntimeConfigurationInput')
    DescribeRuntimeConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeRuntimeConfigurationOutput')
    DescribeScalingPoliciesInput = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesInput')
    DescribeScalingPoliciesOutput = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesOutput')
    Double = Shapes::FloatShape.new(name: 'Double')
    EC2InstanceCounts = Shapes::StructureShape.new(name: 'EC2InstanceCounts')
    EC2InstanceLimit = Shapes::StructureShape.new(name: 'EC2InstanceLimit')
    EC2InstanceLimitList = Shapes::ListShape.new(name: 'EC2InstanceLimitList')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCode = Shapes::StringShape.new(name: 'EventCode')
    EventList = Shapes::ListShape.new(name: 'EventList')
    FleetAttributes = Shapes::StructureShape.new(name: 'FleetAttributes')
    FleetAttributesList = Shapes::ListShape.new(name: 'FleetAttributesList')
    FleetCapacity = Shapes::StructureShape.new(name: 'FleetCapacity')
    FleetCapacityExceededException = Shapes::StructureShape.new(name: 'FleetCapacityExceededException')
    FleetCapacityList = Shapes::ListShape.new(name: 'FleetCapacityList')
    FleetId = Shapes::StringShape.new(name: 'FleetId')
    FleetIdList = Shapes::ListShape.new(name: 'FleetIdList')
    FleetStatus = Shapes::StringShape.new(name: 'FleetStatus')
    FleetUtilization = Shapes::StructureShape.new(name: 'FleetUtilization')
    FleetUtilizationList = Shapes::ListShape.new(name: 'FleetUtilizationList')
    FreeText = Shapes::StringShape.new(name: 'FreeText')
    GameProperty = Shapes::StructureShape.new(name: 'GameProperty')
    GamePropertyKey = Shapes::StringShape.new(name: 'GamePropertyKey')
    GamePropertyList = Shapes::ListShape.new(name: 'GamePropertyList')
    GamePropertyValue = Shapes::StringShape.new(name: 'GamePropertyValue')
    GameSession = Shapes::StructureShape.new(name: 'GameSession')
    GameSessionDetail = Shapes::StructureShape.new(name: 'GameSessionDetail')
    GameSessionDetailList = Shapes::ListShape.new(name: 'GameSessionDetailList')
    GameSessionFullException = Shapes::StructureShape.new(name: 'GameSessionFullException')
    GameSessionList = Shapes::ListShape.new(name: 'GameSessionList')
    GameSessionStatus = Shapes::StringShape.new(name: 'GameSessionStatus')
    GetGameSessionLogUrlInput = Shapes::StructureShape.new(name: 'GetGameSessionLogUrlInput')
    GetGameSessionLogUrlOutput = Shapes::StructureShape.new(name: 'GetGameSessionLogUrlOutput')
    GetInstanceAccessInput = Shapes::StructureShape.new(name: 'GetInstanceAccessInput')
    GetInstanceAccessOutput = Shapes::StructureShape.new(name: 'GetInstanceAccessOutput')
    IdStringModel = Shapes::StringShape.new(name: 'IdStringModel')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceAccess = Shapes::StructureShape.new(name: 'InstanceAccess')
    InstanceCredentials = Shapes::StructureShape.new(name: 'InstanceCredentials')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidFleetStatusException = Shapes::StructureShape.new(name: 'InvalidFleetStatusException')
    InvalidGameSessionStatusException = Shapes::StructureShape.new(name: 'InvalidGameSessionStatusException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpPermission = Shapes::StructureShape.new(name: 'IpPermission')
    IpPermissionsList = Shapes::ListShape.new(name: 'IpPermissionsList')
    IpProtocol = Shapes::StringShape.new(name: 'IpProtocol')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAliasesInput = Shapes::StructureShape.new(name: 'ListAliasesInput')
    ListAliasesOutput = Shapes::StructureShape.new(name: 'ListAliasesOutput')
    ListBuildsInput = Shapes::StructureShape.new(name: 'ListBuildsInput')
    ListBuildsOutput = Shapes::StructureShape.new(name: 'ListBuildsOutput')
    ListFleetsInput = Shapes::StructureShape.new(name: 'ListFleetsInput')
    ListFleetsOutput = Shapes::StructureShape.new(name: 'ListFleetsOutput')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    NonBlankAndLengthConstraintString = Shapes::StringShape.new(name: 'NonBlankAndLengthConstraintString')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonZeroAndMaxString = Shapes::StringShape.new(name: 'NonZeroAndMaxString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    PlayerIdList = Shapes::ListShape.new(name: 'PlayerIdList')
    PlayerSession = Shapes::StructureShape.new(name: 'PlayerSession')
    PlayerSessionCreationPolicy = Shapes::StringShape.new(name: 'PlayerSessionCreationPolicy')
    PlayerSessionId = Shapes::StringShape.new(name: 'PlayerSessionId')
    PlayerSessionList = Shapes::ListShape.new(name: 'PlayerSessionList')
    PlayerSessionStatus = Shapes::StringShape.new(name: 'PlayerSessionStatus')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    ProtectionPolicy = Shapes::StringShape.new(name: 'ProtectionPolicy')
    PutScalingPolicyInput = Shapes::StructureShape.new(name: 'PutScalingPolicyInput')
    PutScalingPolicyOutput = Shapes::StructureShape.new(name: 'PutScalingPolicyOutput')
    RequestUploadCredentialsInput = Shapes::StructureShape.new(name: 'RequestUploadCredentialsInput')
    RequestUploadCredentialsOutput = Shapes::StructureShape.new(name: 'RequestUploadCredentialsOutput')
    ResolveAliasInput = Shapes::StructureShape.new(name: 'ResolveAliasInput')
    ResolveAliasOutput = Shapes::StructureShape.new(name: 'ResolveAliasOutput')
    ResourceCreationLimitPolicy = Shapes::StructureShape.new(name: 'ResourceCreationLimitPolicy')
    RoutingStrategy = Shapes::StructureShape.new(name: 'RoutingStrategy')
    RoutingStrategyType = Shapes::StringShape.new(name: 'RoutingStrategyType')
    RuntimeConfiguration = Shapes::StructureShape.new(name: 'RuntimeConfiguration')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ScalingAdjustmentType = Shapes::StringShape.new(name: 'ScalingAdjustmentType')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScalingPolicyList = Shapes::ListShape.new(name: 'ScalingPolicyList')
    ScalingStatusType = Shapes::StringShape.new(name: 'ScalingStatusType')
    SearchGameSessionsInput = Shapes::StructureShape.new(name: 'SearchGameSessionsInput')
    SearchGameSessionsOutput = Shapes::StructureShape.new(name: 'SearchGameSessionsOutput')
    ServerProcess = Shapes::StructureShape.new(name: 'ServerProcess')
    ServerProcessList = Shapes::ListShape.new(name: 'ServerProcessList')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TerminalRoutingStrategyException = Shapes::StructureShape.new(name: 'TerminalRoutingStrategyException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UpdateAliasInput = Shapes::StructureShape.new(name: 'UpdateAliasInput')
    UpdateAliasOutput = Shapes::StructureShape.new(name: 'UpdateAliasOutput')
    UpdateBuildInput = Shapes::StructureShape.new(name: 'UpdateBuildInput')
    UpdateBuildOutput = Shapes::StructureShape.new(name: 'UpdateBuildOutput')
    UpdateFleetAttributesInput = Shapes::StructureShape.new(name: 'UpdateFleetAttributesInput')
    UpdateFleetAttributesOutput = Shapes::StructureShape.new(name: 'UpdateFleetAttributesOutput')
    UpdateFleetCapacityInput = Shapes::StructureShape.new(name: 'UpdateFleetCapacityInput')
    UpdateFleetCapacityOutput = Shapes::StructureShape.new(name: 'UpdateFleetCapacityOutput')
    UpdateFleetPortSettingsInput = Shapes::StructureShape.new(name: 'UpdateFleetPortSettingsInput')
    UpdateFleetPortSettingsOutput = Shapes::StructureShape.new(name: 'UpdateFleetPortSettingsOutput')
    UpdateGameSessionInput = Shapes::StructureShape.new(name: 'UpdateGameSessionInput')
    UpdateGameSessionOutput = Shapes::StructureShape.new(name: 'UpdateGameSessionOutput')
    UpdateRuntimeConfigurationInput = Shapes::StructureShape.new(name: 'UpdateRuntimeConfigurationInput')
    UpdateRuntimeConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateRuntimeConfigurationOutput')
    WholeNumber = Shapes::IntegerShape.new(name: 'WholeNumber')

    Alias.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    Alias.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, location_name: "Name"))
    Alias.add_member(:description, Shapes::ShapeRef.new(shape: FreeText, location_name: "Description"))
    Alias.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, location_name: "RoutingStrategy"))
    Alias.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Alias.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Alias.struct_class = Types::Alias

    AliasList.member = Shapes::ShapeRef.new(shape: Alias)

    AwsCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessKeyId"))
    AwsCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SecretAccessKey"))
    AwsCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SessionToken"))
    AwsCredentials.struct_class = Types::AwsCredentials

    Build.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, location_name: "BuildId"))
    Build.add_member(:name, Shapes::ShapeRef.new(shape: FreeText, location_name: "Name"))
    Build.add_member(:version, Shapes::ShapeRef.new(shape: FreeText, location_name: "Version"))
    Build.add_member(:status, Shapes::ShapeRef.new(shape: BuildStatus, location_name: "Status"))
    Build.add_member(:size_on_disk, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "SizeOnDisk"))
    Build.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    Build.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Build.struct_class = Types::Build

    BuildList.member = Shapes::ShapeRef.new(shape: Build)

    CreateAliasInput.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, required: true, location_name: "Name"))
    CreateAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    CreateAliasInput.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, required: true, location_name: "RoutingStrategy"))
    CreateAliasInput.struct_class = Types::CreateAliasInput

    CreateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    CreateAliasOutput.struct_class = Types::CreateAliasOutput

    CreateBuildInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    CreateBuildInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    CreateBuildInput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    CreateBuildInput.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    CreateBuildInput.struct_class = Types::CreateBuildInput

    CreateBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    CreateBuildOutput.add_member(:upload_credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "UploadCredentials"))
    CreateBuildOutput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    CreateBuildOutput.struct_class = Types::CreateBuildOutput

    CreateFleetInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    CreateFleetInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    CreateFleetInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, required: true, location_name: "BuildId"))
    CreateFleetInput.add_member(:server_launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchPath"))
    CreateFleetInput.add_member(:server_launch_parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchParameters"))
    CreateFleetInput.add_member(:log_paths, Shapes::ShapeRef.new(shape: StringList, location_name: "LogPaths"))
    CreateFleetInput.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, required: true, location_name: "EC2InstanceType"))
    CreateFleetInput.add_member(:ec2_inbound_permissions, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "EC2InboundPermissions"))
    CreateFleetInput.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    CreateFleetInput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    CreateFleetInput.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    CreateFleetInput.struct_class = Types::CreateFleetInput

    CreateFleetOutput.add_member(:fleet_attributes, Shapes::ShapeRef.new(shape: FleetAttributes, location_name: "FleetAttributes"))
    CreateFleetOutput.struct_class = Types::CreateFleetOutput

    CreateGameSessionInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    CreateGameSessionInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    CreateGameSessionInput.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, required: true, location_name: "MaximumPlayerSessionCount"))
    CreateGameSessionInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    CreateGameSessionInput.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    CreateGameSessionInput.add_member(:creator_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "CreatorId"))
    CreateGameSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: IdStringModel, location_name: "GameSessionId"))
    CreateGameSessionInput.struct_class = Types::CreateGameSessionInput

    CreateGameSessionOutput.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    CreateGameSessionOutput.struct_class = Types::CreateGameSessionOutput

    CreatePlayerSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    CreatePlayerSessionInput.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PlayerId"))
    CreatePlayerSessionInput.struct_class = Types::CreatePlayerSessionInput

    CreatePlayerSessionOutput.add_member(:player_session, Shapes::ShapeRef.new(shape: PlayerSession, location_name: "PlayerSession"))
    CreatePlayerSessionOutput.struct_class = Types::CreatePlayerSessionOutput

    CreatePlayerSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    CreatePlayerSessionsInput.add_member(:player_ids, Shapes::ShapeRef.new(shape: PlayerIdList, required: true, location_name: "PlayerIds"))
    CreatePlayerSessionsInput.struct_class = Types::CreatePlayerSessionsInput

    CreatePlayerSessionsOutput.add_member(:player_sessions, Shapes::ShapeRef.new(shape: PlayerSessionList, location_name: "PlayerSessions"))
    CreatePlayerSessionsOutput.struct_class = Types::CreatePlayerSessionsOutput

    DeleteAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, required: true, location_name: "AliasId"))
    DeleteAliasInput.struct_class = Types::DeleteAliasInput

    DeleteBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, required: true, location_name: "BuildId"))
    DeleteBuildInput.struct_class = Types::DeleteBuildInput

    DeleteFleetInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DeleteFleetInput.struct_class = Types::DeleteFleetInput

    DeleteScalingPolicyInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    DeleteScalingPolicyInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DeleteScalingPolicyInput.struct_class = Types::DeleteScalingPolicyInput

    DescribeAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, required: true, location_name: "AliasId"))
    DescribeAliasInput.struct_class = Types::DescribeAliasInput

    DescribeAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    DescribeAliasOutput.struct_class = Types::DescribeAliasOutput

    DescribeBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, required: true, location_name: "BuildId"))
    DescribeBuildInput.struct_class = Types::DescribeBuildInput

    DescribeBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    DescribeBuildOutput.struct_class = Types::DescribeBuildOutput

    DescribeEC2InstanceLimitsInput.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "EC2InstanceType"))
    DescribeEC2InstanceLimitsInput.struct_class = Types::DescribeEC2InstanceLimitsInput

    DescribeEC2InstanceLimitsOutput.add_member(:ec2_instance_limits, Shapes::ShapeRef.new(shape: EC2InstanceLimitList, location_name: "EC2InstanceLimits"))
    DescribeEC2InstanceLimitsOutput.struct_class = Types::DescribeEC2InstanceLimitsOutput

    DescribeFleetAttributesInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdList, location_name: "FleetIds"))
    DescribeFleetAttributesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetAttributesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesInput.struct_class = Types::DescribeFleetAttributesInput

    DescribeFleetAttributesOutput.add_member(:fleet_attributes, Shapes::ShapeRef.new(shape: FleetAttributesList, location_name: "FleetAttributes"))
    DescribeFleetAttributesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesOutput.struct_class = Types::DescribeFleetAttributesOutput

    DescribeFleetCapacityInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdList, location_name: "FleetIds"))
    DescribeFleetCapacityInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetCapacityInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityInput.struct_class = Types::DescribeFleetCapacityInput

    DescribeFleetCapacityOutput.add_member(:fleet_capacity, Shapes::ShapeRef.new(shape: FleetCapacityList, location_name: "FleetCapacity"))
    DescribeFleetCapacityOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityOutput.struct_class = Types::DescribeFleetCapacityOutput

    DescribeFleetEventsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DescribeFleetEventsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeFleetEventsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeFleetEventsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsInput.struct_class = Types::DescribeFleetEventsInput

    DescribeFleetEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeFleetEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsOutput.struct_class = Types::DescribeFleetEventsOutput

    DescribeFleetPortSettingsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DescribeFleetPortSettingsInput.struct_class = Types::DescribeFleetPortSettingsInput

    DescribeFleetPortSettingsOutput.add_member(:inbound_permissions, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissions"))
    DescribeFleetPortSettingsOutput.struct_class = Types::DescribeFleetPortSettingsOutput

    DescribeFleetUtilizationInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdList, location_name: "FleetIds"))
    DescribeFleetUtilizationInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetUtilizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationInput.struct_class = Types::DescribeFleetUtilizationInput

    DescribeFleetUtilizationOutput.add_member(:fleet_utilization, Shapes::ShapeRef.new(shape: FleetUtilizationList, location_name: "FleetUtilization"))
    DescribeFleetUtilizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationOutput.struct_class = Types::DescribeFleetUtilizationOutput

    DescribeGameSessionDetailsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    DescribeGameSessionDetailsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionDetailsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    DescribeGameSessionDetailsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionDetailsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionDetailsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsInput.struct_class = Types::DescribeGameSessionDetailsInput

    DescribeGameSessionDetailsOutput.add_member(:game_session_details, Shapes::ShapeRef.new(shape: GameSessionDetailList, location_name: "GameSessionDetails"))
    DescribeGameSessionDetailsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsOutput.struct_class = Types::DescribeGameSessionDetailsOutput

    DescribeGameSessionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    DescribeGameSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    DescribeGameSessionsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsInput.struct_class = Types::DescribeGameSessionsInput

    DescribeGameSessionsOutput.add_member(:game_sessions, Shapes::ShapeRef.new(shape: GameSessionList, location_name: "GameSessions"))
    DescribeGameSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsOutput.struct_class = Types::DescribeGameSessionsOutput

    DescribeInstancesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DescribeInstancesInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DescribeInstancesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesInput.struct_class = Types::DescribeInstancesInput

    DescribeInstancesOutput.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    DescribeInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesOutput.struct_class = Types::DescribeInstancesOutput

    DescribePlayerSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribePlayerSessionsInput.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    DescribePlayerSessionsInput.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    DescribePlayerSessionsInput.add_member(:player_session_status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerSessionStatusFilter"))
    DescribePlayerSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribePlayerSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsInput.struct_class = Types::DescribePlayerSessionsInput

    DescribePlayerSessionsOutput.add_member(:player_sessions, Shapes::ShapeRef.new(shape: PlayerSessionList, location_name: "PlayerSessions"))
    DescribePlayerSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsOutput.struct_class = Types::DescribePlayerSessionsOutput

    DescribeRuntimeConfigurationInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DescribeRuntimeConfigurationInput.struct_class = Types::DescribeRuntimeConfigurationInput

    DescribeRuntimeConfigurationOutput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    DescribeRuntimeConfigurationOutput.struct_class = Types::DescribeRuntimeConfigurationOutput

    DescribeScalingPoliciesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DescribeScalingPoliciesInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: ScalingStatusType, location_name: "StatusFilter"))
    DescribeScalingPoliciesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeScalingPoliciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesInput.struct_class = Types::DescribeScalingPoliciesInput

    DescribeScalingPoliciesOutput.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicyList, location_name: "ScalingPolicies"))
    DescribeScalingPoliciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesOutput.struct_class = Types::DescribeScalingPoliciesOutput

    EC2InstanceCounts.add_member(:desired, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "DESIRED"))
    EC2InstanceCounts.add_member(:minimum, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MINIMUM"))
    EC2InstanceCounts.add_member(:maximum, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MAXIMUM"))
    EC2InstanceCounts.add_member(:pending, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "PENDING"))
    EC2InstanceCounts.add_member(:active, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ACTIVE"))
    EC2InstanceCounts.add_member(:idle, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "IDLE"))
    EC2InstanceCounts.add_member(:terminating, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TERMINATING"))
    EC2InstanceCounts.struct_class = Types::EC2InstanceCounts

    EC2InstanceLimit.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "EC2InstanceType"))
    EC2InstanceLimit.add_member(:current_instances, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentInstances"))
    EC2InstanceLimit.add_member(:instance_limit, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "InstanceLimit"))
    EC2InstanceLimit.struct_class = Types::EC2InstanceLimit

    EC2InstanceLimitList.member = Shapes::ShapeRef.new(shape: EC2InstanceLimit)

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "EventId"))
    Event.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ResourceId"))
    Event.add_member(:event_code, Shapes::ShapeRef.new(shape: EventCode, location_name: "EventCode"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    Event.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventTime"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    FleetAttributes.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetAttributes.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    FleetAttributes.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    FleetAttributes.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    FleetAttributes.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    FleetAttributes.add_member(:status, Shapes::ShapeRef.new(shape: FleetStatus, location_name: "Status"))
    FleetAttributes.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, location_name: "BuildId"))
    FleetAttributes.add_member(:server_launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchPath"))
    FleetAttributes.add_member(:server_launch_parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchParameters"))
    FleetAttributes.add_member(:log_paths, Shapes::ShapeRef.new(shape: StringList, location_name: "LogPaths"))
    FleetAttributes.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    FleetAttributes.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    FleetAttributes.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    FleetAttributes.struct_class = Types::FleetAttributes

    FleetAttributesList.member = Shapes::ShapeRef.new(shape: FleetAttributes)

    FleetCapacity.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetCapacity.add_member(:instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "InstanceType"))
    FleetCapacity.add_member(:instance_counts, Shapes::ShapeRef.new(shape: EC2InstanceCounts, location_name: "InstanceCounts"))
    FleetCapacity.struct_class = Types::FleetCapacity

    FleetCapacityList.member = Shapes::ShapeRef.new(shape: FleetCapacity)

    FleetIdList.member = Shapes::ShapeRef.new(shape: FleetId)

    FleetUtilization.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetUtilization.add_member(:active_server_process_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ActiveServerProcessCount"))
    FleetUtilization.add_member(:active_game_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ActiveGameSessionCount"))
    FleetUtilization.add_member(:current_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    FleetUtilization.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    FleetUtilization.struct_class = Types::FleetUtilization

    FleetUtilizationList.member = Shapes::ShapeRef.new(shape: FleetUtilization)

    GameProperty.add_member(:key, Shapes::ShapeRef.new(shape: GamePropertyKey, required: true, location_name: "Key"))
    GameProperty.add_member(:value, Shapes::ShapeRef.new(shape: GamePropertyValue, required: true, location_name: "Value"))
    GameProperty.struct_class = Types::GameProperty

    GamePropertyList.member = Shapes::ShapeRef.new(shape: GameProperty)

    GameSession.add_member(:game_session_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionId"))
    GameSession.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    GameSession.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    GameSession.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GameSession.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    GameSession.add_member(:current_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    GameSession.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    GameSession.add_member(:status, Shapes::ShapeRef.new(shape: GameSessionStatus, location_name: "Status"))
    GameSession.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    GameSession.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    GameSession.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    GameSession.add_member(:player_session_creation_policy, Shapes::ShapeRef.new(shape: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    GameSession.add_member(:creator_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "CreatorId"))
    GameSession.struct_class = Types::GameSession

    GameSessionDetail.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    GameSessionDetail.add_member(:protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "ProtectionPolicy"))
    GameSessionDetail.struct_class = Types::GameSessionDetail

    GameSessionDetailList.member = Shapes::ShapeRef.new(shape: GameSessionDetail)

    GameSessionList.member = Shapes::ShapeRef.new(shape: GameSession)

    GetGameSessionLogUrlInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    GetGameSessionLogUrlInput.struct_class = Types::GetGameSessionLogUrlInput

    GetGameSessionLogUrlOutput.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PreSignedUrl"))
    GetGameSessionLogUrlOutput.struct_class = Types::GetGameSessionLogUrlOutput

    GetInstanceAccessInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    GetInstanceAccessInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetInstanceAccessInput.struct_class = Types::GetInstanceAccessInput

    GetInstanceAccessOutput.add_member(:instance_access, Shapes::ShapeRef.new(shape: InstanceAccess, location_name: "InstanceAccess"))
    GetInstanceAccessOutput.struct_class = Types::GetInstanceAccessOutput

    Instance.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    Instance.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    Instance.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    Instance.add_member(:type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "Type"))
    Instance.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "Status"))
    Instance.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Instance.struct_class = Types::Instance

    InstanceAccess.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    InstanceAccess.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAccess.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    InstanceAccess.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    InstanceAccess.add_member(:credentials, Shapes::ShapeRef.new(shape: InstanceCredentials, location_name: "Credentials"))
    InstanceAccess.struct_class = Types::InstanceAccess

    InstanceCredentials.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserName"))
    InstanceCredentials.add_member(:secret, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Secret"))
    InstanceCredentials.struct_class = Types::InstanceCredentials

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    IpPermission.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "FromPort"))
    IpPermission.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "ToPort"))
    IpPermission.add_member(:ip_range, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "IpRange"))
    IpPermission.add_member(:protocol, Shapes::ShapeRef.new(shape: IpProtocol, required: true, location_name: "Protocol"))
    IpPermission.struct_class = Types::IpPermission

    IpPermissionsList.member = Shapes::ShapeRef.new(shape: IpPermission)

    ListAliasesInput.add_member(:routing_strategy_type, Shapes::ShapeRef.new(shape: RoutingStrategyType, location_name: "RoutingStrategyType"))
    ListAliasesInput.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ListAliasesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListAliasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListAliasesInput.struct_class = Types::ListAliasesInput

    ListAliasesOutput.add_member(:aliases, Shapes::ShapeRef.new(shape: AliasList, location_name: "Aliases"))
    ListAliasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListAliasesOutput.struct_class = Types::ListAliasesOutput

    ListBuildsInput.add_member(:status, Shapes::ShapeRef.new(shape: BuildStatus, location_name: "Status"))
    ListBuildsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListBuildsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListBuildsInput.struct_class = Types::ListBuildsInput

    ListBuildsOutput.add_member(:builds, Shapes::ShapeRef.new(shape: BuildList, location_name: "Builds"))
    ListBuildsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListBuildsOutput.struct_class = Types::ListBuildsOutput

    ListFleetsInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, location_name: "BuildId"))
    ListFleetsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListFleetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsInput.struct_class = Types::ListFleetsInput

    ListFleetsOutput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdList, location_name: "FleetIds"))
    ListFleetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsOutput.struct_class = Types::ListFleetsOutput

    PlayerIdList.member = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)

    PlayerSession.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    PlayerSession.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    PlayerSession.add_member(:game_session_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionId"))
    PlayerSession.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    PlayerSession.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PlayerSession.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    PlayerSession.add_member(:status, Shapes::ShapeRef.new(shape: PlayerSessionStatus, location_name: "Status"))
    PlayerSession.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    PlayerSession.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    PlayerSession.struct_class = Types::PlayerSession

    PlayerSessionList.member = Shapes::ShapeRef.new(shape: PlayerSession)

    PutScalingPolicyInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    PutScalingPolicyInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    PutScalingPolicyInput.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ScalingAdjustment"))
    PutScalingPolicyInput.add_member(:scaling_adjustment_type, Shapes::ShapeRef.new(shape: ScalingAdjustmentType, required: true, location_name: "ScalingAdjustmentType"))
    PutScalingPolicyInput.add_member(:threshold, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Threshold"))
    PutScalingPolicyInput.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperatorType, required: true, location_name: "ComparisonOperator"))
    PutScalingPolicyInput.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "EvaluationPeriods"))
    PutScalingPolicyInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    PutScalingPolicyInput.struct_class = Types::PutScalingPolicyInput

    PutScalingPolicyOutput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    PutScalingPolicyOutput.struct_class = Types::PutScalingPolicyOutput

    RequestUploadCredentialsInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, required: true, location_name: "BuildId"))
    RequestUploadCredentialsInput.struct_class = Types::RequestUploadCredentialsInput

    RequestUploadCredentialsOutput.add_member(:upload_credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "UploadCredentials"))
    RequestUploadCredentialsOutput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    RequestUploadCredentialsOutput.struct_class = Types::RequestUploadCredentialsOutput

    ResolveAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, required: true, location_name: "AliasId"))
    ResolveAliasInput.struct_class = Types::ResolveAliasInput

    ResolveAliasOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    ResolveAliasOutput.struct_class = Types::ResolveAliasOutput

    ResourceCreationLimitPolicy.add_member(:new_game_sessions_per_creator, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "NewGameSessionsPerCreator"))
    ResourceCreationLimitPolicy.add_member(:policy_period_in_minutes, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "PolicyPeriodInMinutes"))
    ResourceCreationLimitPolicy.struct_class = Types::ResourceCreationLimitPolicy

    RoutingStrategy.add_member(:type, Shapes::ShapeRef.new(shape: RoutingStrategyType, location_name: "Type"))
    RoutingStrategy.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    RoutingStrategy.add_member(:message, Shapes::ShapeRef.new(shape: FreeText, location_name: "Message"))
    RoutingStrategy.struct_class = Types::RoutingStrategy

    RuntimeConfiguration.add_member(:server_processes, Shapes::ShapeRef.new(shape: ServerProcessList, location_name: "ServerProcesses"))
    RuntimeConfiguration.struct_class = Types::RuntimeConfiguration

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    S3Location.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    S3Location.struct_class = Types::S3Location

    ScalingPolicy.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    ScalingPolicy.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    ScalingPolicy.add_member(:status, Shapes::ShapeRef.new(shape: ScalingStatusType, location_name: "Status"))
    ScalingPolicy.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: Integer, location_name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:scaling_adjustment_type, Shapes::ShapeRef.new(shape: ScalingAdjustmentType, location_name: "ScalingAdjustmentType"))
    ScalingPolicy.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperatorType, location_name: "ComparisonOperator"))
    ScalingPolicy.add_member(:threshold, Shapes::ShapeRef.new(shape: Double, location_name: "Threshold"))
    ScalingPolicy.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "EvaluationPeriods"))
    ScalingPolicy.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    ScalingPolicyList.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    SearchGameSessionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    SearchGameSessionsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    SearchGameSessionsInput.add_member(:filter_expression, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "FilterExpression"))
    SearchGameSessionsInput.add_member(:sort_expression, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "SortExpression"))
    SearchGameSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    SearchGameSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsInput.struct_class = Types::SearchGameSessionsInput

    SearchGameSessionsOutput.add_member(:game_sessions, Shapes::ShapeRef.new(shape: GameSessionList, location_name: "GameSessions"))
    SearchGameSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsOutput.struct_class = Types::SearchGameSessionsOutput

    ServerProcess.add_member(:launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "LaunchPath"))
    ServerProcess.add_member(:parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Parameters"))
    ServerProcess.add_member(:concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "ConcurrentExecutions"))
    ServerProcess.struct_class = Types::ServerProcess

    ServerProcessList.member = Shapes::ShapeRef.new(shape: ServerProcess)

    StringList.member = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)

    UpdateAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, required: true, location_name: "AliasId"))
    UpdateAliasInput.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, location_name: "Name"))
    UpdateAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    UpdateAliasInput.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, location_name: "RoutingStrategy"))
    UpdateAliasInput.struct_class = Types::UpdateAliasInput

    UpdateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    UpdateAliasOutput.struct_class = Types::UpdateAliasOutput

    UpdateBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, required: true, location_name: "BuildId"))
    UpdateBuildInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateBuildInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    UpdateBuildInput.struct_class = Types::UpdateBuildInput

    UpdateBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    UpdateBuildOutput.struct_class = Types::UpdateBuildOutput

    UpdateFleetAttributesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    UpdateFleetAttributesInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateFleetAttributesInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    UpdateFleetAttributesInput.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    UpdateFleetAttributesInput.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    UpdateFleetAttributesInput.struct_class = Types::UpdateFleetAttributesInput

    UpdateFleetAttributesOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetAttributesOutput.struct_class = Types::UpdateFleetAttributesOutput

    UpdateFleetCapacityInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    UpdateFleetCapacityInput.add_member(:desired_instances, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "DesiredInstances"))
    UpdateFleetCapacityInput.add_member(:min_size, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MinSize"))
    UpdateFleetCapacityInput.add_member(:max_size, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaxSize"))
    UpdateFleetCapacityInput.struct_class = Types::UpdateFleetCapacityInput

    UpdateFleetCapacityOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetCapacityOutput.struct_class = Types::UpdateFleetCapacityOutput

    UpdateFleetPortSettingsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_authorizations, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissionAuthorizations"))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_revocations, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissionRevocations"))
    UpdateFleetPortSettingsInput.struct_class = Types::UpdateFleetPortSettingsInput

    UpdateFleetPortSettingsOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetPortSettingsOutput.struct_class = Types::UpdateFleetPortSettingsOutput

    UpdateGameSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    UpdateGameSessionInput.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    UpdateGameSessionInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateGameSessionInput.add_member(:player_session_creation_policy, Shapes::ShapeRef.new(shape: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    UpdateGameSessionInput.add_member(:protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "ProtectionPolicy"))
    UpdateGameSessionInput.struct_class = Types::UpdateGameSessionInput

    UpdateGameSessionOutput.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    UpdateGameSessionOutput.struct_class = Types::UpdateGameSessionOutput

    UpdateRuntimeConfigurationInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    UpdateRuntimeConfigurationInput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, required: true, location_name: "RuntimeConfiguration"))
    UpdateRuntimeConfigurationInput.struct_class = Types::UpdateRuntimeConfigurationInput

    UpdateRuntimeConfigurationOutput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    UpdateRuntimeConfigurationOutput.struct_class = Types::UpdateRuntimeConfigurationOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-10-01"

      api.metadata = {
        "endpointPrefix" => "gamelift",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon GameLift",
        "signatureVersion" => "v4",
        "targetPrefix" => "GameLift",
      }

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBuildInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:create_game_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGameSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGameSessionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGameSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FleetCapacityExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_player_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlayerSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlayerSessionInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePlayerSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: GameSessionFullException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:create_player_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlayerSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlayerSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePlayerSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: GameSessionFullException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBuildInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:describe_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAliasInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBuildInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_ec2_instance_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEC2InstanceLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEC2InstanceLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEC2InstanceLimitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetCapacityInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetCapacityOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetEventsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_fleet_port_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetPortSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetPortSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetPortSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetUtilizationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetUtilizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_game_session_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessionDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
      end)

      api.add_operation(:describe_game_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
      end)

      api.add_operation(:describe_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_player_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePlayerSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePlayerSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePlayerSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_runtime_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuntimeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuntimeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuntimeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_scaling_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:get_game_session_log_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGameSessionLogUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGameSessionLogUrlInput)
        o.output = Shapes::ShapeRef.new(shape: GetGameSessionLogUrlOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_instance_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceAccessInput)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuilds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:put_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutScalingPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:request_upload_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestUploadCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestUploadCredentialsInput)
        o.output = Shapes::ShapeRef.new(shape: RequestUploadCredentialsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:resolve_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResolveAliasInput)
        o.output = Shapes::ShapeRef.new(shape: ResolveAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_game_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchGameSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchGameSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchGameSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
      end)

      api.add_operation(:update_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBuildInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_fleet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_fleet_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetCapacityInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetCapacityOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_fleet_port_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetPortSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetPortSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetPortSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_game_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameSessionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_runtime_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuntimeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuntimeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuntimeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
      end)
    end

  end
end
