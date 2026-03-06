role_definitions = {
  "TRG AKS Custom Cluster Admin" = {
    actions = [
      "Microsoft.ContainerService/managedClusters/listClusterAdminCredential/action",
      "Microsoft.ContainerService/managedClusters/listClusterUserCredential/action",
      "Microsoft.ContainerService/managedClusters/listClusterMonitoringUserCredential/action",
      "Microsoft.ContainerService/managedClusters/accessProfiles/listCredential/action",
      "Microsoft.ContainerService/managedClusters/read",
      "Microsoft.ContainerService/managedClusters/runcommand/action",
      "Microsoft.ContainerService/managedClusters/agentPools/write"
    ]
    data_actions     = ["Microsoft.ContainerService/managedClusters/*"]
    description      = "Combines AKS Cluster Admin and AKS Cluster User: COP-7793"
    name             = "TRG AKS Custom Cluster Admin"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG ARM Deployment" = {
    actions = [
      "Microsoft.Resources/deployments/validate/action",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/deployments/delete"
    ]
    data_actions     = []
    description      = "For allowing workflow deployment of PIM ARM templates"
    name             = "TRG ARM Deployment"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Contributor Restricted" = {
    actions = [
      "*"
    ]
    data_actions = []
    description  = "Restricted Contributor permissions. Restricted permissions may increase over time"
    name         = "TRG Contributor Restricted"
    not_actions = [
      "Microsoft.Authorization/*/Delete",
      "Microsoft.Authorization/*/Write",
      "Microsoft.Authorization/elevateAccess/Action",
      "Microsoft.Blueprint/blueprintAssignments/write",
      "Microsoft.Blueprint/blueprintAssignments/delete",
      "Microsoft.Compute/galleries/share/action",
      "Microsoft.DBforPostgreSQL/flexibleServers/administrators/action",
      "Microsoft.DBforPostgreSQL/flexibleServers/administrators/delete",
      "Microsoft.DBforPostgreSQL/flexibleServers/administrators/write",
      "Microsoft.Network/networkSecurityGroups/write",
      "Microsoft.Network/networkSecurityGroups/delete",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networksecuritygroups/providers/Microsoft.Insights/diagnosticSettings/write",
      "Microsoft.Network/networkSecurityGroups/securityRules/write",
      "Microsoft.Network/networkSecurityGroups/securityRules/delete",
      "Microsoft.Purview/consents/write",
      "Microsoft.Purview/consents/delete",
      "Microsoft.Resources/deploymentStacks/manageDenySetting/action",
      "Microsoft.Subscription/cancel/action",
      "Microsoft.Subscription/enable/action"
    ]
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG CV Backup" = {
    actions = [
      "Microsoft.Compute/availabilitySets/Read",
      "Microsoft.Compute/diskEncryptionSets/read",
      "Microsoft.Compute/disks/*",
      "Microsoft.Compute/locations/*",
      "Microsoft.Compute/proximityPlacementGroups/delete",
      "Microsoft.Compute/proximityPlacementGroups/read",
      "Microsoft.Compute/proximityPlacementGroups/write",
      "Microsoft.Compute/restorePointCollections/*",
      "Microsoft.Compute/Snapshots/*",
      "Microsoft.Compute/virtualMachines/*",
      "Microsoft.DBforMariaDB/locations/*",
      "Microsoft.DBforMariaDB/servers/*",
      "Microsoft.DBforMySQL/flexibleServers/*",
      "Microsoft.DBforMySQL/locations/*",
      "Microsoft.DBforMySQL/servers/*",
      "Microsoft.DBforPostgreSQL/flexibleServers/*",
      "Microsoft.DBforPostgreSQL/locations/*",
      "Microsoft.DBforPostgreSQL/servers/*",
      "Microsoft.DocumentDB/databaseAccounts/listKeys/action",
      "Microsoft.DocumentDB/databaseAccounts/read",
      "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/containers/*",
      "Microsoft.KeyVault/checkNameAvailability/read",
      "Microsoft.KeyVault/operations/read",
      "Microsoft.KeyVault/vaults/*/read",
      "Microsoft.KeyVault/vaults/accessPolicies/write",
      "Microsoft.KeyVault/vaults/deploy/action",
      "Microsoft.KeyVault/vaults/read",
      "Microsoft.KeyVault/vaults/write",
      "Microsoft.MarketplaceOrdering/offertypes/publishers/offers/plans/agreements/read",
      "Microsoft.MarketplaceOrdering/offertypes/publishers/offers/plans/agreements/write",
      "Microsoft.Network/applicationSecurityGroups/joinIpConfiguration/action",
      "Microsoft.Network/applicationSecurityGroups/read",
      "Microsoft.Network/loadBalancers/read",
      "Microsoft.Network/locations/*",
      "Microsoft.Network/networkInterfaces/*",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networkSecurityGroups/read",
      "Microsoft.Network/publicIPAddresses/join/action",
      "Microsoft.Network/publicIPAddresses/read",
      "Microsoft.Network/publicIPAddresses/write",
      "Microsoft.Network/virtualNetworks/read",
      "Microsoft.Network/virtualNetworks/subnets/join/action",
      "Microsoft.Network/virtualNetworks/subnets/read",
      "Microsoft.ResourceHealth/availabilityStatuses/read",
      "Microsoft.Resources/deployments/*",
      "Microsoft.Resources/subscriptions/resourceGroups/*",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.Sql/managedInstances/read",
      "Microsoft.Sql/servers/databases/delete",
      "Microsoft.Sql/servers/databases/export/action",
      "Microsoft.Sql/servers/databases/import/action",
      "Microsoft.Sql/servers/databases/read",
      "Microsoft.Sql/servers/databases/write",
      "Microsoft.Sql/servers/import/action",
      "Microsoft.Sql/servers/importExportOperationResults/read",
      "Microsoft.Sql/servers/read",
      "Microsoft.Storage/storageAccounts/*",
      "Microsoft.Storage/storageAccounts/blobServices/containers/read",
      "Microsoft.Storage/storageAccounts/blobServices/containers/write",
      "Microsoft.Storage/storageAccounts/blobServices/generateUserDelegationKey/action",
      "Microsoft.Storage/storageAccounts/listKeys/action"
    ]
    data_actions = [
      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/delete",
      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read",
      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/write",
      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/move/action",
      "Microsoft.Storage/storageAccounts/blobServices/containers/blobs/add/action"
    ]
    description      = "For Metallic SPNs to perform back up jobs"
    name             = "TRG CV Backup"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Managed Cluster Credentials" = {
    actions = [
      "Microsoft.ContainerService/managedClusters/accessProfiles/listCredential/action",
      "Microsoft.ContainerService/managedClusters/listClusterUserCredential/action"
    ]
    data_actions     = []
    description      = "This role is created so thay an AKS Reader SPN can list the credentials on an AKS cluster during Terraform deployments/Updates COP-2319."
    name             = "TRG Managed Cluster Credentials"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Network Reader" = {
    actions = [
      "Microsoft.Network/networkInterfaces/effectiveRouteTable/action",
      "Microsoft.Network/networkInterfaces/effectiveNetworkSecurityGroups/action"
    ]
    data_actions     = []
    description      = "This role is created so that network engineers have the permissions needed to see effetice routes and security groups on VM NICs"
    name             = "TRG Network Reader"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Prisma Cloud Policy" = {
    actions = [
      "Microsoft.Advisor/configurations/read",
      "Microsoft.AlertsManagement/prometheusRuleGroups/read",
      "Microsoft.AlertsManagement/smartDetectorAlertRules/read",
      "Microsoft.AnalysisServices/servers/read",
      "Microsoft.ApiManagement/service/apis/diagnostics/read",
      "Microsoft.ApiManagement/service/apis/policies/read",
      "Microsoft.ApiManagement/service/apis/read",
      "Microsoft.ApiManagement/service/identityProviders/read",
      "Microsoft.ApiManagement/service/portalsettings/read",
      "Microsoft.ApiManagement/service/products/policies/read",
      "Microsoft.ApiManagement/service/products/read",
      "Microsoft.ApiManagement/service/read",
      "Microsoft.ApiManagement/service/tenant/read",
      "Microsoft.AppConfiguration/configurationStores/read",
      "Microsoft.AppPlatform/Spring/apps/read",
      "Microsoft.AppPlatform/Spring/read",
      "Microsoft.Attestation/attestationProviders/read",
      "Microsoft.Authorization/classicAdministrators/read",
      "Microsoft.Authorization/locks/read",
      "Microsoft.Authorization/permissions/read",
      "Microsoft.Authorization/policyAssignments/delete",
      "Microsoft.Authorization/policyAssignments/read",
      "Microsoft.Authorization/policyAssignments/write",
      "Microsoft.Authorization/policyDefinitions/read",
      "Microsoft.Authorization/roleAssignments/read",
      "Microsoft.Authorization/roleDefinitions/read",
      "Microsoft.Automanage/configurationProfiles/Read",
      "Microsoft.Automation/automationAccounts/credentials/read",
      "Microsoft.Automation/automationAccounts/hybridRunbookWorkerGroups/read",
      "Microsoft.Automation/automationAccounts/read",
      "Microsoft.Automation/automationAccounts/runbooks/read",
      "Microsoft.Automation/automationAccounts/variables/read",
      "Microsoft.AzureStackHCI/Clusters/Read",
      "Microsoft.Batch/batchAccounts/pools/read",
      "Microsoft.Batch/batchAccounts/read",
      "Microsoft.Blueprint/blueprints/read",
      "Microsoft.BotService/botServices/read",
      "Microsoft.Cache/redis/firewallRules/read",
      "Microsoft.Cache/redis/read",
      "Microsoft.Cache/redisEnterprise/read",
      "Microsoft.Cdn/profiles/afdendpoints/read",
      "Microsoft.Cdn/profiles/afdendpoints/routes/read",
      "Microsoft.Cdn/profiles/customdomains/read",
      "Microsoft.Cdn/profiles/endpoints/customdomains/read",
      "Microsoft.Cdn/profiles/endpoints/read",
      "Microsoft.Cdn/profiles/origingroups/read",
      "Microsoft.Cdn/profiles/read",
      "Microsoft.Cdn/profiles/securitypolicies/read",
      "Microsoft.Chaos/experiments/read",
      "Microsoft.ClassicCompute/VirtualMachines/read",
      "Microsoft.ClassicNetwork/networkSecurityGroups/read",
      "Microsoft.ClassicNetwork/reservedIps/read",
      "Microsoft.ClassicNetwork/virtualNetworks/read",
      "Microsoft.ClassicStorage/StorageAccounts/read",
      "Microsoft.CognitiveServices/accounts/read",
      "Microsoft.Communication/CommunicationServices/Read",
      "Microsoft.Compute/availabilitySets/read",
      "Microsoft.Compute/cloudServices/read",
      "Microsoft.Compute/cloudServices/roleInstances/read",
      "Microsoft.Compute/diskEncryptionSets/read",
      "Microsoft.Compute/disks/beginGetAccess/action",
      "Microsoft.Compute/disks/read",
      "Microsoft.Compute/galleries/images/read",
      "Microsoft.Compute/galleries/read",
      "Microsoft.Compute/hostGroups/read",
      "Microsoft.Compute/snapshots/read",
      "Microsoft.Compute/virtualMachineScaleSets/networkInterfaces/read",
      "Microsoft.Compute/virtualMachineScaleSets/publicIPAddresses/read",
      "Microsoft.Compute/virtualMachineScaleSets/read",
      "Microsoft.Compute/virtualMachineScaleSets/virtualMachines/networkInterfaces/ipConfigurations/publicIPAddresses/read",
      "Microsoft.Compute/virtualMachineScaleSets/virtualMachines/read",
      "Microsoft.Compute/virtualMachineScaleSets/virtualmachines/instanceView/read",
      "Microsoft.Compute/virtualMachines/extensions/read",
      "Microsoft.Compute/virtualMachines/instanceView/read",
      "Microsoft.Compute/virtualMachines/read",
      "Microsoft.Compute/virtualMachines/runCommand/action",
      "Microsoft.Compute/virtualMachines/start/action",
      "Microsoft.Confluent/organizations/Read",
      "Microsoft.ContainerInstance/containerGroups/containers/exec/action",
      "Microsoft.ContainerInstance/containerGroups/read",
      "Microsoft.ContainerRegistry/registries/metadata/read",
      "Microsoft.ContainerRegistry/registries/pull/read",
      "Microsoft.ContainerRegistry/registries/read",
      "Microsoft.ContainerRegistry/registries/webhooks/getCallbackConfig/action",
      "Microsoft.ContainerService/managedClusters/read",
      "Microsoft.DBforMariaDB/servers/firewallRules/read",
      "Microsoft.DBforMariaDB/servers/read",
      "Microsoft.DBforMySQL/flexibleServers/configurations/read",
      "Microsoft.DBforMySQL/flexibleServers/configurations/write",
      "Microsoft.DBforMySQL/flexibleServers/databases/read",
      "Microsoft.DBforMySQL/flexibleServers/firewallRules/read",
      "Microsoft.DBforMySQL/flexibleServers/read",
      "Microsoft.DBforMySQL/servers/firewallRules/read",
      "Microsoft.DBforMySQL/servers/read",
      "Microsoft.DBforMySQL/servers/virtualNetworkRules/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/configurations/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/databases/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/firewallRules/read",
      "Microsoft.DBforPostgreSQL/flexibleServers/read",
      "Microsoft.DBforPostgreSQL/servers/configurations/read",
      "Microsoft.DBforPostgreSQL/servers/configurations/write",
      "Microsoft.DBforPostgreSQL/servers/firewallRules/read",
      "Microsoft.DBforPostgreSQL/servers/read",
      "Microsoft.DBforPostgreSQL/serversv2/firewallRules/read",
      "Microsoft.Dashboard/grafana/read",
      "Microsoft.DataBoxEdge/dataBoxEdgeDevices/read",
      "Microsoft.DataFactory/datafactories/read",
      "Microsoft.DataFactory/factories/integrationruntimes/read",
      "Microsoft.DataFactory/factories/linkedservices/read",
      "Microsoft.DataFactory/factories/read",
      "Microsoft.DataLakeAnalytics/accounts/dataLakeStoreAccounts/read",
      "Microsoft.DataLakeAnalytics/accounts/firewallRules/read",
      "Microsoft.DataLakeAnalytics/accounts/read",
      "Microsoft.DataLakeAnalytics/accounts/storageAccounts/read",
      "Microsoft.DataLakeStore/accounts/firewallRules/read",
      "Microsoft.DataLakeStore/accounts/read",
      "Microsoft.DataLakeStore/accounts/trustedIdProviders/read",
      "Microsoft.DataLakeStore/accounts/virtualNetworkRules/read",
      "Microsoft.DataMigration/services/read",
      "Microsoft.DataShare/accounts/read",
      "Microsoft.Databricks/accessConnectors/read",
      "Microsoft.Databricks/workspaces/read",
      "Microsoft.Datadog/monitors/read",
      "Microsoft.DesktopVirtualization/applicationgroups/read",
      "Microsoft.DesktopVirtualization/hostpools/read",
      "Microsoft.DesktopVirtualization/hostpools/sessionhostconfigurations/read",
      "Microsoft.DesktopVirtualization/hostpools/sessionhosts/read",
      "Microsoft.DesktopVirtualization/workspaces/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.DesktopVirtualization/workspaces/read",
      "Microsoft.DevCenter/devcenters/read",
      "Microsoft.DevTestLab/schedules/read",
      "Microsoft.Devices/iotHubs/Read",
      "Microsoft.Devices/iotHubs/privateLinkResources/Read",
      "Microsoft.DigitalTwins/digitalTwinsInstances/read",
      "Microsoft.DocumentDB/cassandraClusters/read",
      "Microsoft.DocumentDB/databaseAccounts/listConnectionStrings/action",
      "Microsoft.DocumentDB/databaseAccounts/listKeys/action",
      "Microsoft.DocumentDB/databaseAccounts/read",
      "Microsoft.DocumentDB/databaseAccounts/readonlykeys/action",
      "Microsoft.DocumentDB/databaseAccounts/write",
      "Microsoft.DomainRegistration/domains/Read",
      "Microsoft.Easm/workspaces/read",
      "Microsoft.Elastic/monitors/read",
      "Microsoft.EventGrid/domains/privateLinkResources/read",
      "Microsoft.EventGrid/domains/read",
      "Microsoft.EventGrid/namespaces/read",
      "Microsoft.EventGrid/partnerNamespaces/read",
      "Microsoft.EventGrid/topics/privateLinkResources/read",
      "Microsoft.EventGrid/topics/read",
      "Microsoft.EventHub/Namespaces/PrivateEndpointConnections/read",
      "Microsoft.EventHub/clusters/read",
      "Microsoft.EventHub/namespaces/authorizationRules/read",
      "Microsoft.EventHub/namespaces/eventhubs/authorizationRules/read",
      "Microsoft.EventHub/namespaces/eventhubs/read",
      "Microsoft.EventHub/namespaces/ipfilterrules/read",
      "Microsoft.EventHub/namespaces/read",
      "Microsoft.EventHub/namespaces/virtualnetworkrules/read",
      "Microsoft.HDInsight/clusters/applications/read",
      "Microsoft.HDInsight/clusters/read",
      "Microsoft.HealthBot/healthBots/Read",
      "Microsoft.HealthcareApis/workspaces/read",
      "Microsoft.HybridCompute/machines/read",
      "Microsoft.Insights/ActivityLogAlerts/read",
      "Microsoft.Insights/Components/read",
      "Microsoft.Insights/DataCollectionEndpoints/Read",
      "Microsoft.Insights/DataCollectionRules/Read",
      "Microsoft.Insights/LogProfiles/Delete",
      "Microsoft.Insights/LogProfiles/read",
      "Microsoft.Insights/LogProfiles/Write",
      "Microsoft.Insights/MetricAlerts/Read",
      "Microsoft.Insights/actionGroups/read",
      "Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.Insights/eventtypes/values/read",
      "Microsoft.IoTCentral/IoTApps/read",
      "Microsoft.KeyVault/vaults/keys/read",
      "Microsoft.KeyVault/vaults/privateLinkResources/read",
      "Microsoft.KeyVault/vaults/read",
      "Microsoft.Kusto/Clusters/Databases/read",
      "Microsoft.Kusto/Clusters/read",
      "Microsoft.Kusto/clusters/read",
      "Microsoft.LabServices/labs/read",
      "Microsoft.LoadTestService/loadTests/read",
      "Microsoft.Logic/integrationAccounts/read",
      "Microsoft.Logic/workflows/read",
      "Microsoft.Logic/workflows/versions/read",
      "Microsoft.MachineLearningServices/workspaces/computes/read",
      "Microsoft.MachineLearningServices/workspaces/outboundRules/read",
      "Microsoft.MachineLearningServices/workspaces/read",
      "Microsoft.ManagedIdentity/userAssignedIdentities/read",
      "Microsoft.ManagedServices/marketplaceRegistrationDefinitions/read",
      "Microsoft.ManagedServices/registrationAssignments/read",
      "Microsoft.Management/managementGroups/descendants/read",
      "Microsoft.Management/managementGroups/read",
      "Microsoft.Management/managementGroups/subscriptions/read",
      "Microsoft.Maps/accounts/read",
      "Microsoft.Migrate/moveCollections/read",
      "Microsoft.MixedReality/ObjectAnchorsAccounts/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/read",
      "Microsoft.NetApp/netAppAccounts/capacityPools/volumes/read",
      "Microsoft.NetApp/netAppAccounts/read",
      "Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies/read",
      "Microsoft.Network/applicationGateways/read",
      "Microsoft.Network/applicationSecurityGroups/read",
      "Microsoft.Network/azurefirewalls/read",
      "Microsoft.Network/bastionHosts/read",
      "Microsoft.Network/connections/read",
      "Microsoft.Network/ddosProtectionPlans/read",
      "Microsoft.Network/dnsZones/read",
      "Microsoft.Network/expressRouteCircuits/authorizations/read",
      "Microsoft.Network/expressRouteCircuits/peerings/connections/read",
      "Microsoft.Network/expressRouteCircuits/peerings/peerConnections/read",
      "Microsoft.Network/expressRouteCircuits/peerings/read",
      "Microsoft.Network/expressRouteCircuits/read",
      "Microsoft.Network/expressRouteCrossConnections/peerings/read",
      "Microsoft.Network/expressRouteCrossConnections/read",
      "Microsoft.Network/expressRouteGateways/expressRouteConnections/read",
      "Microsoft.Network/expressRouteGateways/read",
      "Microsoft.Network/expressRoutePorts/authorizations/read",
      "Microsoft.Network/expressRoutePorts/links/read",
      "Microsoft.Network/expressRoutePorts/read",
      "Microsoft.Network/expressRoutePortsLocations/read",
      "Microsoft.Network/firewallPolicies/read",
      "Microsoft.Network/frontDoorWebApplicationFirewallPolicies/read",
      "Microsoft.Network/frontDoors/backendPools/read",
      "Microsoft.Network/frontDoors/frontendEndpoints/read",
      "Microsoft.Network/frontDoors/healthProbeSettings/read",
      "Microsoft.Network/frontDoors/loadBalancingSettings/read",
      "Microsoft.Network/frontDoors/read",
      "Microsoft.Network/frontDoors/routingRules/read",
      "Microsoft.Network/frontDoors/rulesEngines/read",
      "Microsoft.Network/loadBalancers/read",
      "Microsoft.Network/localnetworkgateways/read",
      "Microsoft.Network/locations/usages/read",
      "Microsoft.Network/natGateways/read",
      "Microsoft.Network/networkInterfaces/effectiveNetworkSecurityGroups/action",
      "Microsoft.Network/networkInterfaces/effectiveRouteTable/action",
      "Microsoft.Network/networkInterfaces/read",
      "Microsoft.Network/networkSecurityGroups/defaultSecurityRules/read",
      "Microsoft.Network/networkSecurityGroups/read",
      "Microsoft.Network/networkSecurityGroups/securityRules/delete",
      "Microsoft.Network/networkSecurityGroups/securityRules/read",
      "Microsoft.Network/networkSecurityGroups/securityRules/write",
      "Microsoft.Network/networkWatchers/queryFlowLogStatus/*",
      "Microsoft.Network/networkWatchers/read",
      "Microsoft.Network/networkWatchers/securityGroupView/action",
      "Microsoft.Network/p2sVpnGateways/read",
      "Microsoft.Network/privateDnsZones/ALL/read",
      "Microsoft.Network/privateDnsZones/read",
      "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/read",
      "Microsoft.Network/privateEndpoints/read",
      "Microsoft.Network/privateLinkServices/read",
      "Microsoft.Network/publicIPAddresses/read",
      "Microsoft.Network/publicIPPrefixes/read",
      "Microsoft.Network/routeFilters/read",
      "Microsoft.Network/routeFilters/routeFilterRules/read",
      "Microsoft.Network/routeTables/read",
      "Microsoft.Network/routeTables/routes/read",
      "Microsoft.Network/serviceEndpointPolicies/read",
      "Microsoft.Network/serviceEndpointPolicies/serviceEndpointPolicyDefinitions/read",
      "Microsoft.Network/trafficManagerProfiles/read",
      "Microsoft.Network/virtualNetworkGateways/read",
      "Microsoft.Network/virtualNetworks/read",
      "Microsoft.Network/virtualNetworks/subnets/read",
      "Microsoft.Network/virtualNetworks/virtualNetworkPeerings/read",
      "Microsoft.Network/virtualWans/read",
      "Microsoft.Network/virtualwans/vpnconfiguration/action",
      "Microsoft.Network/vpnServerConfigurations/read",
      "Microsoft.NetworkFunction/azureTrafficCollectors/read",
      "Microsoft.NotificationHubs/Namespaces/NotificationHubs/read",
      "Microsoft.NotificationHubs/Namespaces/read",
      "Microsoft.OperationalInsights/clusters/read",
      "Microsoft.OperationalInsights/querypacks/read",
      "Microsoft.OperationalInsights/workspaces/read",
      "Microsoft.OperationalInsights/workspaces/tables/read",
      "Microsoft.Orbital/spacecrafts/read",
      "Microsoft.PowerBIDedicated/capacities/read",
      "Microsoft.PowerBIDedicated/servers/read",
      "Microsoft.Quantum/Workspaces/Read",
      "Microsoft.RecoveryServices/Vaults/backupProtectedItems/read",
      "Microsoft.RecoveryServices/Vaults/read",
      "Microsoft.RecoveryServices/vaults/backupPolicies/read",
      "Microsoft.RedHatOpenShift/openShiftClusters/read",
      "Microsoft.Relay/Namespaces/read",
      "Microsoft.Resources/Resources/read",
      "Microsoft.Resources/subscriptions/providers/read",
      "Microsoft.Resources/subscriptions/read",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.Resources/subscriptions/resourceGroups/delete",
      "Microsoft.Resources/subscriptions/resourceGroups/write",
      "Microsoft.Resources/templateSpecs/read",
      "Microsoft.SaaS/applications/read",
      "Microsoft.Search/searchServices/read",
      "Microsoft.Security/advancedThreatProtectionSettings/read",
      "Microsoft.Security/autoProvisioningSettings/read",
      "Microsoft.Security/autoProvisioningSettings/write",
      "Microsoft.Security/automations/read",
      "Microsoft.Security/iotSecuritySolutions/read",
      "Microsoft.Security/locations/jitNetworkAccessPolicies/read",
      "Microsoft.Security/locations/read",
      "Microsoft.Security/pricings/read",
      "Microsoft.Security/secureScores/read",
      "Microsoft.Security/securityContacts/read",
      "Microsoft.Security/settings/read",
      "Microsoft.Security/workspaceSettings/read",
      "Microsoft.ServiceBus/namespaces/authorizationRules/read",
      "Microsoft.ServiceBus/namespaces/networkrulesets/read",
      "Microsoft.ServiceBus/namespaces/privateEndpointConnections/read",
      "Microsoft.ServiceBus/namespaces/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.ServiceBus/namespaces/queues/read",
      "Microsoft.ServiceBus/namespaces/read",
      "Microsoft.ServiceBus/namespaces/topics/read",
      "Microsoft.ServiceBus/namespaces/topics/subscriptions/read",
      "Microsoft.ServiceFabric/clusters/read",
      "Microsoft.SignalRService/SignalR/read",
      "Microsoft.SignalRService/WebPubSub/read",
      "Microsoft.Solutions/applications/read",
      "Microsoft.Sql/managedInstances/databases/read",
      "Microsoft.Sql/managedInstances/databases/transparentDataEncryption/read",
      "Microsoft.Sql/managedInstances/encryptionProtector/Read",
      "Microsoft.Sql/managedInstances/read",
      "Microsoft.Sql/managedInstances/vulnerabilityAssessments/Read",
      "Microsoft.Sql/servers/administrators/read",
      "Microsoft.Sql/servers/auditingSettings/read",
      "Microsoft.Sql/servers/databases/auditingSettings/read",
      "Microsoft.Sql/servers/databases/dataMaskingPolicies/read",
      "Microsoft.Sql/servers/databases/dataMaskingPolicies/rules/read",
      "Microsoft.Sql/servers/databases/read",
      "Microsoft.Sql/servers/databases/securityAlertPolicies/read",
      "Microsoft.Sql/servers/databases/securityAlertPolicies/write",
      "Microsoft.Sql/servers/databases/transparentDataEncryption/read",
      "Microsoft.Sql/servers/databases/transparentDataEncryption/write",
      "Microsoft.Sql/servers/encryptionProtector/read",
      "Microsoft.Sql/servers/firewallRules/read",
      "Microsoft.Sql/servers/read",
      "Microsoft.Sql/servers/securityAlertPolicies/read",
      "Microsoft.Sql/servers/vulnerabilityAssessments/read",
      "Microsoft.SqlVirtualMachine/sqlVirtualMachines/read",
      "Microsoft.Storage/storageAccounts/*",
      "Microsoft.StorageCache/Subscription/caches/read",
      "Microsoft.StorageCache/caches/read",
      "Microsoft.StorageMover/storageMovers/read",
      "Microsoft.StorageSync/storageSyncServices/privateLinkResources/read",
      "Microsoft.StorageSync/storageSyncServices/read",
      "Microsoft.StreamAnalytics/clusters/Read",
      "Microsoft.StreamAnalytics/streamingjobs/Read",
      "Microsoft.Subscription/Policies/default/read",
      "Microsoft.Synapse/privateLinkHubs/privateLinkResources/read",
      "Microsoft.Synapse/privateLinkHubs/read",
      "Microsoft.Synapse/workspaces/privateLinkResources/read",
      "Microsoft.Synapse/workspaces/read",
      "Microsoft.Synapse/workspaces/sparkConfigurations/read",
      "Microsoft.Synapse/workspaces/sqlPools/geoBackupPolicies/read",
      "Microsoft.Synapse/workspaces/sqlPools/read",
      "Microsoft.VideoIndexer/accounts/read",
      "Microsoft.VisualStudio/Account/Read",
      "Microsoft.Web/certificates/read",
      "Microsoft.Web/customApis/read",
      "Microsoft.Web/hostingEnvironments/Read",
      "Microsoft.Web/serverfarms/Read",
      "Microsoft.Web/sites/basicPublishingCredentialsPolicies/Read",
      "Microsoft.Web/sites/config/list/action",
      "Microsoft.Web/sites/config/read",
      "Microsoft.Web/sites/config/Write",
      "Microsoft.web/sites/functions/action",
      "Microsoft.Web/sites/privateEndpointConnections/Read",
      "Microsoft.Web/sites/publishxml/action",
      "Microsoft.Web/sites/Read",
      "Microsoft.Web/sites/slots/Read",
      "Microsoft.Web/sites/Write",
      "Microsoft.Web/staticSites/Read",
      "Microsoft.Workloads/monitors/read",
      "Microsoft.classicCompute/domainNames/read",
      "microsoft.app/containerapps/read",
      "microsoft.monitor/accounts/read",
      "microsoft.network/virtualnetworkgateways/connections/read",
      "microsoft.web/serverfarms/sites/read"
    ]
    data_actions     = []
    description      = "Custom Role for Prisma Cloud SPN"
    name             = "TRG Prisma Cloud Policy"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Prisma Cloud Policy VM Scanning Write" = {
    actions = [
      "Microsoft.Compute/disks/delete",
      "Microsoft.Compute/disks/write",
      "Microsoft.Compute/virtualMachines/delete",
      "Microsoft.Compute/virtualMachines/write",
      "Microsoft.Network/networkInterfaces/delete",
      "Microsoft.Network/networkInterfaces/join/action",
      "Microsoft.Network/networkInterfaces/write",
      "Microsoft.Network/networkSecurityGroups/delete",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networkSecurityGroups/write",
      "Microsoft.Network/virtualNetworks/subnets/join/action"
    ]
    data_actions     = []
    description      = "Custom Role for Prisma SPN for VM image scan and write permissions"
    name             = "TRG Prisma Cloud Policy VM Scanning Write"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Prisma Cloud Policy Agentless Write" = {
    actions = [
      "Microsoft.Compute/disks/delete",
      "Microsoft.Compute/disks/write",
      "Microsoft.Compute/snapshots/delete",
      "Microsoft.Compute/snapshots/write",
      "Microsoft.Compute/virtualMachines/delete",
      "Microsoft.Compute/virtualMachines/write",
      "Microsoft.Network/networkInterfaces/delete",
      "Microsoft.Network/networkInterfaces/join/action",
      "Microsoft.Network/networkInterfaces/write",
      "Microsoft.Network/networkSecurityGroups/delete",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networkSecurityGroups/write",
      "Microsoft.Network/virtualNetworks/delete",
      "Microsoft.Network/virtualNetworks/subnets/join/action",
      "Microsoft.Network/virtualNetworks/write"
    ]
    data_actions     = []
    description      = "Custom Role for Prisma SPN for Agentless and write permissions"
    name             = "TRG Prisma Cloud Policy Agentless Write"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Private Dns Zone Read" = {
    actions = [
      "Microsoft.Network/privateDnsZones/read",
      "Microsoft.Network/privateDnsZones/*/read"
    ]
    data_actions     = []
    description      = "This role is created for the repo reader spn for deploying ACR COP-2455. Updated in COP-3227"
    name             = "TRG Private Dns Zone Read"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Redis List Keys" = {
    actions = [
      "Microsoft.Cache/redis/listKeys/action"
    ]
    data_actions     = []
    description      = "To allow select users to list redis cache conenctions strings"
    name             = "TRG Redis List Keys"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Resource Lock" = {
    actions = [
      "Microsoft.Authorization/locks/*",
      "*/read"
    ]
    data_actions     = []
    description      = "Role to allow adding and removing of resources locks COP-3894"
    name             = "TRG Resource Lock"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "TRG Website Reader" = {
    actions = [
      "Microsoft.Web/sites/config/list/action",
    ]
    data_actions     = []
    description      = "Role to allow reading of Website plan configuration"
    name             = "TRG Website Reader"
    not_actions      = []
    not_data_actions = []
    scope            = "65822a18-e4a3-4658-89cc-86edadc7bda5" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ ADF Run" = {
    actions = [
      "Microsoft.DataFactory/factories/pipelines/createRun/action",
      "Microsoft.DataFactory/factories/pipelineruns/cancel/action"
    ]
    data_actions     = []
    description      = "This role is created for to allow for to create ADF run jobs. COP-4908."
    name             = "LZ ADF Run"
    not_actions      = []
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ Console Access" = {
    actions = [
      "Microsoft.SerialConsole/serialPorts/connect/action",
      "Microsoft.Compute/virtualMachineScaleSets/virtualMachines/retrieveBootDiagnosticsData/action",
      "Microsoft.Compute/virtualMachines/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.Compute/virtualMachines/read"
    ]
    data_actions     = []
    description      = "This role is created so the ITMS team can access the console in the TruBridge customer environment."
    name             = "LZ Console Access"
    not_actions      = []
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ VM Admin" = {
    actions = [
      "Microsoft.Authorization/*/read",
      "Microsoft.Compute/availabilitySets/*",
      "Microsoft.Compute/locations/*",
      "Microsoft.Compute/virtualMachines/*",
      "Microsoft.Compute/virtualMachineScaleSets/*",
      "Microsoft.Compute/cloudServices/*",
      "Microsoft.Compute/disks/write",
      "Microsoft.Compute/disks/read",
      "Microsoft.Compute/disks/delete",
      "Microsoft.DevTestLab/schedules/*",
      "Microsoft.Insights/alertRules/*",
      "Microsoft.Network/applicationGateways/backendAddressPools/join/action",
      "Microsoft.Network/loadBalancers/backendAddressPools/join/action",
      "Microsoft.Network/loadBalancers/inboundNatPools/join/action",
      "Microsoft.Network/loadBalancers/inboundNatRules/join/action",
      "Microsoft.Network/loadBalancers/probes/join/action",
      "Microsoft.Network/loadBalancers/read",
      "Microsoft.Network/locations/*",
      "Microsoft.Network/networkInterfaces/*",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networkSecurityGroups/read",
      "Microsoft.Network/publicIPAddresses/join/action",
      "Microsoft.Network/publicIPAddresses/read",
      "Microsoft.Network/virtualNetworks/read",
      "Microsoft.Network/virtualNetworks/subnets/join/action",
      "Microsoft.RecoveryServices/locations/*",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/backupProtectionIntent/write",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/*/read",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/read",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/write",
      "Microsoft.RecoveryServices/Vaults/backupPolicies/read",
      "Microsoft.RecoveryServices/Vaults/backupPolicies/write",
      "Microsoft.RecoveryServices/Vaults/read",
      "Microsoft.RecoveryServices/Vaults/usages/read",
      "Microsoft.RecoveryServices/Vaults/write",
      "Microsoft.ResourceHealth/availabilityStatuses/read",
      "Microsoft.Resources/deployments/*",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.SerialConsole/serialPorts/connect/action",
      "Microsoft.SqlVirtualMachine/*",
      "Microsoft.Storage/storageAccounts/listKeys/action",
      "Microsoft.Storage/storageAccounts/read",
      "Microsoft.Support/*"
    ]
    data_actions = []
    description  = "This role is created so the ITMS team in combination with PIM to troubleshoot VMs in the TruBridge customer environment."
    name         = "LZ VM Admin"
    not_actions = [
      "Microsoft.Compute/virtualMachines/delete",
      "Microsoft.Compute/virtualMachineScaleSets/write",
      "Microsoft.Compute/virtualMachineScaleSets/delete",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/deployments/delete",
      "Microsoft.SqlVirtualMachine/sqlVirtualMachines/write",
      "Microsoft.SqlVirtualMachine/sqlVirtualMachines/delete"
    ]
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ MDP Container Group Contributor" = {
    actions = [
      "Microsoft.ContainerInstance/containerGroups/write",
      "Microsoft.ContainerInstance/containerGroups/delete",
      "Microsoft.ContainerInstance/containerGroups/read",
      "Microsoft.ManagedIdentity/userAssignedIdentities/assign/action"
    ]
    data_actions     = []
    description      = "This role is for the Ingestion of ADF in the Modern Data Platform to dynamically create container groups in the ADF pipelines to perform the dbt transforms, monitor the status of the transforms, and then delete the container groups when done."
    name             = "LZ MDP Container Group Contributor"
    not_actions      = []
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ MDP Azure Container Registry CRUD" = {
    actions = [
      "Microsoft.ContainerRegistry/registries/artifacts/delete",
      "Microsoft.ContainerRegistry/registries/pull/read",
      "Microsoft.ContainerRegistry/registries/push/write"
    ]
    data_actions     = []
    description      = "This role is created to combine the ACR push, ACR Pull and ACR Delete roles into one."
    name             = "LZ MDP Azure Container Registry CRUD"
    not_actions      = []
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ MDP ADF Integration Runtime Setup" = {
    actions = [
      "Microsoft.Authorization/roleAssignments/write"
    ]
    data_actions     = []
    description      = "This role is created so the MDP Engineers can add permissions for shared Integration Runtimes"
    name             = "LZ MDP ADF Integration Runtime Setup"
    not_actions      = []
    not_data_actions = []
    scope            = "lz" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ US CUSTOMER NPD Policy Trigger" = {
    actions = [
      "Microsoft.PolicyInsights/policyStates/triggerEvaluation/action"
    ]
    data_actions     = []
    description      = "Custom Role to allow users to manually trigger policy evaluations in Non Prod CPSI Corp subscriptions COP-2006"
    name             = "LZ US CUSTOMER NPD Policy Trigger"
    not_actions      = []
    not_data_actions = []
    scope            = "lz-us-customer-npd" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ US CUSTOMER SHD Console Access" = {
    actions = [
      "Microsoft.SerialConsole/serialPorts/connect/action",
      "Microsoft.Compute/virtualMachineScaleSets/virtualMachines/retrieveBootDiagnosticsData/action",
      "Microsoft.Compute/virtualMachines/providers/Microsoft.Insights/diagnosticSettings/read",
      "Microsoft.Compute/virtualMachines/read"
    ]
    data_actions     = []
    description      = "This role is created so the ITMS team can access the console in the TruBridge customer environment."
    name             = "LZ US CUSTOMER SHD Console Access"
    not_actions      = []
    not_data_actions = []
    scope            = "lz-us-customer-shd" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
  "LZ US CUSTOMER SHD VM Admin" = {
    actions = [
      "Microsoft.Authorization/*/read",
      "Microsoft.Compute/availabilitySets/*",
      "Microsoft.Compute/locations/*",
      "Microsoft.Compute/virtualMachines/*",
      "Microsoft.Compute/virtualMachineScaleSets/*",
      "Microsoft.Compute/cloudServices/*",
      "Microsoft.Compute/disks/write",
      "Microsoft.Compute/disks/read",
      "Microsoft.Compute/disks/delete",
      "Microsoft.DevTestLab/schedules/*",
      "Microsoft.Insights/alertRules/*",
      "Microsoft.Network/applicationGateways/backendAddressPools/join/action",
      "Microsoft.Network/loadBalancers/backendAddressPools/join/action",
      "Microsoft.Network/loadBalancers/inboundNatPools/join/action",
      "Microsoft.Network/loadBalancers/inboundNatRules/join/action",
      "Microsoft.Network/loadBalancers/probes/join/action",
      "Microsoft.Network/loadBalancers/read",
      "Microsoft.Network/locations/*",
      "Microsoft.Network/networkInterfaces/*",
      "Microsoft.Network/networkSecurityGroups/join/action",
      "Microsoft.Network/networkSecurityGroups/read",
      "Microsoft.Network/publicIPAddresses/join/action",
      "Microsoft.Network/publicIPAddresses/read",
      "Microsoft.Network/virtualNetworks/read",
      "Microsoft.Network/virtualNetworks/subnets/join/action",
      "Microsoft.RecoveryServices/locations/*",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/backupProtectionIntent/write",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/*/read",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/read",
      "Microsoft.RecoveryServices/Vaults/backupFabrics/protectionContainers/protectedItems/write",
      "Microsoft.RecoveryServices/Vaults/backupPolicies/read",
      "Microsoft.RecoveryServices/Vaults/backupPolicies/write",
      "Microsoft.RecoveryServices/Vaults/read",
      "Microsoft.RecoveryServices/Vaults/usages/read",
      "Microsoft.RecoveryServices/Vaults/write",
      "Microsoft.ResourceHealth/availabilityStatuses/read",
      "Microsoft.Resources/deployments/*",
      "Microsoft.Resources/subscriptions/resourceGroups/read",
      "Microsoft.SerialConsole/serialPorts/connect/action",
      "Microsoft.SqlVirtualMachine/*",
      "Microsoft.Storage/storageAccounts/listKeys/action",
      "Microsoft.Storage/storageAccounts/read",
      "Microsoft.Support/*"
    ]
    data_actions = []
    description  = "This role is created so the ITMS team in combination with PIM to troubleshoot VMs in the TruBridge customer environment."
    name         = "LZ US CUSTOMER SHD VM Admin"
    not_actions = [
      "Microsoft.Compute/virtualMachines/delete",
      "Microsoft.Compute/virtualMachineScaleSets/write",
      "Microsoft.Compute/virtualMachineScaleSets/delete",
      "Microsoft.Resources/deployments/write",
      "Microsoft.Resources/deployments/delete",
      "Microsoft.SqlVirtualMachine/sqlVirtualMachines/write",
      "Microsoft.SqlVirtualMachine/sqlVirtualMachines/delete"
    ]
    not_data_actions = []
    scope            = "lz-us-customer-shd" # Only type in the name or ID of the management group. This gets appended onto what Microsoft expects
  }
}
