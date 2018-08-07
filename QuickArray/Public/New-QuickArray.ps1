Function New-QuickArray {

    Generate-QuickArrayForm

    #Take the global variable, remove the carriage returns, and then use the split method to split on a new line
    Write-Output $global:quickArrayInput.Replace("`r","").Split()

}