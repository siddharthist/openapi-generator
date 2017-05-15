<#
.Synopsis
    Find pet by ID.

.Description
    Find pet by ID. Returns a single pet.

.Parameter Id
    ID of pet to return.

.Example
    Get-PetById -Id 1

.Example
    1 | Get-PetById

.Inputs
    long

.Outputs
    IO.Swagger.Model.Pet

.Notes
    This function is automatically generated by the Swagger Codegen.

.Link
    https://github.com/swagger-api/swagger-codegen
#>
function Get-PetById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $true)]
        [long]
        ${Id}
    )

    Process {
        'Calling method: GetPetById' | Write-Verbose
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $Script:PetApi.GetPetById(
            ${Id}
        )
    }
}