Function Generate-QuickArrayForm {

    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.Application]::EnableVisualStyles()

    $formMain                        = New-Object system.Windows.Forms.Form
    $formMain.ClientSize             = '400,400'
    $formMain.text                   = "Form"
    $formMain.TopMost                = $true

    $labelMain                       = New-Object system.Windows.Forms.Label
    $labelMain.text                  = "Enter items (one per line) to create a quick array"
    $labelMain.AutoSize              = $true
    $labelMain.width                 = 25
    $labelMain.height                = 10
    $labelMain.location              = New-Object System.Drawing.Point(52,22)
    $labelMain.Font                  = 'Microsoft Sans Serif,10'

    $textBoxMain                     = New-Object system.Windows.Forms.TextBox
    $textBoxMain.multiline           = $true
    $textBoxMain.width               = 345
    $textBoxMain.height              = 288
    $textBoxMain.location            = New-Object System.Drawing.Point(25,54)
    $textBoxMain.Font                = 'Microsoft Sans Serif,10'

    $buttonSubmit                    = New-Object system.Windows.Forms.Button
    $buttonSubmit.text               = "Submit"
    $buttonSubmit.width              = 60
    $buttonSubmit.height             = 30
    $buttonSubmit.location           = New-Object System.Drawing.Point(166,360)
    $buttonSubmit.Font               = 'Microsoft Sans Serif,10'

    $formMain.controls.AddRange(@($labelMain,$textBoxMain,$buttonSubmit))

    $buttonSubmit.Add_Click({ 

        Submit-QuickArrayForm

     })

    [void]$formMain.ShowDialog()

}
