#
# OpenAPI Petstore
# This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Delete purchase order by ID

.DESCRIPTION

No description available.

.PARAMETER OrderId
ID of the order that needs to be deleted

.OUTPUTS

None
#>
function Invoke-PSDeleteOrder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${OrderId}
    )

    Process {
        'Calling method: Invoke-PSDeleteOrder' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        $LocalVarUri = '/store/order/{orderId}'
        if (!$OrderId) {
            throw "Error! The required parameter `OrderId` missing when calling deleteOrder."
        }
        $LocalVarUri = $LocalVarUri.replace('{orderId}', $OrderId)

        $LocalVarResult = Invoke-PSApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType ""

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Returns pet inventories by status

.DESCRIPTION

No description available.

.OUTPUTS

System.Collections.Hashtable
#>
function Get-PSInventory {
    [CmdletBinding()]
    Param (
    )

    Process {
        'Calling method: Get-PSInventory' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/store/inventory'

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["api_key"]) {
            $LocalVarHeaderParameters['api_key'] = $Configuration["ApiKey"]["api_key"]
        }

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "System.Collections.Hashtable"

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Find purchase order by ID

.DESCRIPTION

No description available.

.PARAMETER OrderId
ID of pet that needs to be fetched

.OUTPUTS

Order
#>
function Get-PSOrderById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int64]
        ${OrderId}
    )

    Process {
        'Calling method: Get-PSOrderById' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        $LocalVarUri = '/store/order/{orderId}'
        if (!$OrderId) {
            throw "Error! The required parameter `OrderId` missing when calling getOrderById."
        }
        $LocalVarUri = $LocalVarUri.replace('{orderId}', $OrderId)

        $LocalVarResult = Invoke-PSApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Order"

        return $LocalVarResult["Response"]
    }
}

<#
.SYNOPSIS

Place an order for a pet

.DESCRIPTION

No description available.

.PARAMETER Order
order placed for purchasing the pet

.OUTPUTS

Order
#>
function Invoke-PSPlaceOrder {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Order}
    )

    Process {
        'Calling method: Invoke-PSPlaceOrder' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter

        $Configuration = Get-PSConfiguration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/xml', 'application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/store/order'

        if (!$Order) {
            throw "Error! The required parameter `Order` missing when calling placeOrder."
        }

        $LocalVarBodyParameter = $Order | ConvertTo-Json

        $LocalVarResult = Invoke-PSApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "Order"

        return $LocalVarResult["Response"]
    }
}
