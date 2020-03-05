<#
.Synopsis
Create a MariaDb member.
.Description
Create a MariaDb member.
.Example
To view examples, please use the -Online parameter with Get-Help or navigate to: https://docs.microsoft.com/en-us/powershell/module/az.MariaDb/new-azMariaDbmember
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Models.Api20180601Preview.IMariaDbMember
.Notes
COMPLEX PARAMETER PROPERTIES
To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

FIREWALLRULE <IFirewallRule[]>: Gets or sets firewall rules
  [EndIPAddress <String>]: Gets or sets the end IP address of the firewall rule range.
  [RuleName <String>]: Gets or sets the name of the firewall rules.
  [StartIPAddress <String>]: Gets or sets the start IP address of the firewall rule range.
.Link
https://docs.microsoft.com/en-us/powershell/module/az.MariaDb/new-azMariaDbmember
#>
function New-AzMariaDBServer {
    [OutputType([Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Models.Api20180601Preview.IServer])]
    [CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
    [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Profile('latest-2019-04-30')]
    param(
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Path')]
        [System.String]
        # MariaDb member name.
        ${Name},
    
        [Parameter(Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Path')]
        [System.String]
        # The name of the resource group that contains the resource.
        # You can obtain this value from the Azure Resource Manager API or the portal.
        ${ResourceGroupName},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Path')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
        [System.String]
        # Gets the subscription Id which uniquely identifies the Microsoft Azure subscription.
        # The subscription ID is part of the URI for every service call.
        ${SubscriptionId},

        #region ServerForCreate
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.String]
        # The location the resource resides in.
        ${Location},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [int]
        # The scale up/out capacity, representing server's compute units.
        ${SkuCapacity},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.String]
        # The family of hardware.
        ${SkuFamily},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.SkuTier]
        # The tier of the particular SKU, e.g. Basic.
        ${SkuTier},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.String]
        # The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
        ${SkuName},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.String]
        # The size code, to be interpreted by resource as appropriate.
        ${SkuSize},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.SslEnforcementEnum]
        # Enable ssl enforcement or not when connect to server.
        ${SslEnforcement},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [int]
        # Backup retention days for the server
        ${StorageProfileBackupRetentionDay},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.GeoRedundantBackup]
        # Enable Geo-redundant or not for server backup.
        ${StorageProfileGeoRedundantBackup},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.StorageAutogrow]
        # Enable Storage Auto Grow.
        ${StorageProfileStorageAutogrow},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [int]
        # Max storage allowed for a server.
        ${StorageProfileStorageMb},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.ServerVersion]
        # Application-specific metadata in the form of key-value pairs.
        ${Tag},

        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.ServerVersion]
        # Server version
        ${Version},
        #endregion ServerForCreate

        #region ServerPropertiesForDefaultCreate
        [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
        [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.String]
        # The mode to create a new server.
        ${AdministratorLogin},
    
        [Parameter(ParameterSetName='CreateExpanded', Mandatory)]
        [Parameter(ParameterSetName='CreateViaIdentityExpanded', Mandatory)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Body')]
        [System.Security.SecureString]
        # The mode to create a new server.
        ${AdministratorLoginPassword},
    
        #endregion ServerPropertiesForDefaultCreate
        [Parameter()]
        [Alias('AzureRMContext', 'AzureCredential')]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Azure')]
        [System.Management.Automation.PSObject]
        # The credentials, account, tenant, and subscription used for communication with Azure.
        ${DefaultProfile},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command as a job
        ${AsJob},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Wait for .NET debugger to attach
        ${Break},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be appended to the front of the pipeline
        ${HttpPipelineAppend},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Runtime.SendAsyncStep[]]
        # SendAsync Pipeline Steps to be prepended to the front of the pipeline
        ${HttpPipelinePrepend},
    
        [Parameter()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Run the command asynchronously
        ${NoWait},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Uri]
        # The URI for the proxy server to use
        ${Proxy},
    
        [Parameter(DontShow)]
        [ValidateNotNull()]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Management.Automation.PSCredential]
        # Credentials for a proxy server to use for the remote call
        ${ProxyCredential},
    
        [Parameter(DontShow)]
        [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Category('Runtime')]
        [System.Management.Automation.SwitchParameter]
        # Use the default credentials for the proxy
        ${ProxyUseDefaultCredentials}
    )
    
    process {
        try {
            $Parameter = [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Models.Api20180601Preview.ServerForCreate]::new()
            $Parameter.Property = [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Models.Api20180601Preview.ServerPropertiesForDefaultCreate]::new()

            #region ServerForCreate
            if ($PSBoundParameters.ContainsKey('Location')) {
                $Parameter.Property.Location = $PSBoundParameters['Location']
                $PSBoundParameters.Remove('Location')
            }

            if ($PSBoundParameters.ContainsKey('SkuCapacity')) {
                $Parameter.Property.SkuCapacity = $PSBoundParameters['SkuCapacity']
                $PSBoundParameters.Remove('SkuCapacity')
            }

            if ($PSBoundParameters.ContainsKey('SkuFamily')) {
                $Parameter.Property.SkuFamily = $PSBoundParameters['SkuFamily']
                $PSBoundParameters.Remove('SkuFamily')
            }

            if ($PSBoundParameters.ContainsKey('SkuTier')) {
                $Parameter.Property.SkuTier = $PSBoundParameters['SkuTier']
                $PSBoundParameters.Remove('SkuTier')
            }

            if ($PSBoundParameters.ContainsKey('SkuName')) {
                $Parameter.Property.SkuName = $PSBoundParameters['SkuName']
                $PSBoundParameters.Remove('SkuName')
            }

            if ($PSBoundParameters.ContainsKey('SkuSize')) {
                $Parameter.Property.SkuSize = $PSBoundParameters['SkuSize']
                $PSBoundParameters.Remove('SkuSize')
            }

            if ($PSBoundParameters.ContainsKey('SslEnforcement')) {
                $Parameter.Property.SslEnforcement = $PSBoundParameters['SslEnforcement']
                $PSBoundParameters.Remove('SslEnforcement')
            }
            else
            {
                $Parameter.Property.SslEnforcement = [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.SslEnforcementEnum]::Enable
            }

            if ($PSBoundParameters.ContainsKey('StorageProfileBackupRetentionDay')) {
                $Parameter.Property.StorageProfileBackupRetentionDay = $PSBoundParameters['StorageProfileBackupRetentionDay']
                $PSBoundParameters.Remove('StorageProfileBackupRetentionDay')
            }

            if ($PSBoundParameters.ContainsKey('StorageProfileGeoRedundantBackup')) {
                $Parameter.Property.StorageProfileGeoRedundantBackup = $PSBoundParameters['StorageProfileGeoRedundantBackup']
                $PSBoundParameters.Remove('StorageProfileGeoRedundantBackup')
            }

            if ($PSBoundParameters.ContainsKey('StorageProfileStorageAutogrow')) {
                $Parameter.Property.StorageProfileStorageAutogrow = $PSBoundParameters['StorageProfileStorageAutogrow']
                $PSBoundParameters.Remove('StorageProfileStorageAutogrow')
            }

            if ($PSBoundParameters.ContainsKey('StorageProfileStorageMb')) {
                $Parameter.Property.StorageProfileStorageMb = $PSBoundParameters['StorageProfileStorageMb']
                $PSBoundParameters.Remove('StorageProfileStorageMb')
            }

            if ($PSBoundParameters.ContainsKey('Tag')) {
                $Parameter.Property.Tag = $PSBoundParameters['Tag']
                $PSBoundParameters.Remove('Tag')
            }

            if ($PSBoundParameters.ContainsKey('Version')) {
                $Parameter.Property.Version = $PSBoundParameters['Version']
                $PSBoundParameters.Remove('Version')
            }
            #endregion ServerForCreate

            $Parameter.CreateMode = [Microsoft.Azure.PowerShell.Cmdlets.MariaDb.Support.CreateMode]::Default
            $Parameter.Property.AdministratorLogin = $PSBoundParameters['AdministratorLogin']
            $PSBoundParameters.Remove('AdministratorLogin')

            $Parameter.Property.AdministratorLoginPassword = $PSBoundParameters['AdministratorLoginPassword']
            $PSBoundParameters.Remove('AdministratorLoginPassword')

            $PSBoundParameters.Add('Parameter', $Parameter)
    
            Az.MariaDb.internal\New-AzMariaDbServer @PSBoundParameters
          } catch {
              throw
          }
    }
}
    