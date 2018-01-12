[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$TabControl = $null
[System.Windows.Forms.TabPage]$RulesTab = $null
[System.Windows.Forms.Label]$label13 = $null
[System.Windows.Forms.Button]$btn_copyrule = $null
[System.Windows.Forms.Button]$btn_deleterule = $null
[System.Windows.Forms.Button]$btn_newrule = $null
[System.Windows.Forms.Label]$lbl_Rulename = $null
[System.Windows.Forms.ComboBox]$dbx_LocRule = $null
[System.Windows.Forms.GroupBox]$Grp_RuleConfig = $null
[System.Windows.Forms.Button]$btn_GenerateRemoveMessage = $null
[System.Windows.Forms.Label]$label12 = $null
[System.Windows.Forms.Button]$Btn_GenerateAddMessage = $null
[System.Windows.Forms.Label]$label11 = $null
[System.Windows.Forms.Button]$Btn_EditGroup = $null
[System.Windows.Forms.Button]$Btn_DeleteGroup = $null
[System.Windows.Forms.Button]$Btn_NewGroup = $null
[System.Windows.Forms.Label]$label10 = $null
[System.Windows.Forms.TextBox]$Tbx_RuleName = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Button]$Btn_RevertRule = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.CheckedListBox]$cbx_ResponseGroupQueues = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.CheckedListBox]$cbx_groups = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Button]$btn_RuleSave = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.CheckedListBox]$cbx_Location = $null
[System.Windows.Forms.TabPage]$tabPage2 = $null
[System.Windows.Forms.Label]$label15 = $null
[System.Windows.Forms.TextBox]$textBox4 = $null
[System.Windows.Forms.Label]$label14 = $null
[System.Windows.Forms.TextBox]$textBox3 = $null
[System.Windows.Forms.Button]$btn_TestAutodiscover = $null
[System.Windows.Forms.Label]$label16 = $null
[System.Windows.Forms.Button]$btn_TestUserPass = $null
[System.Windows.Forms.TextBox]$tbx_Autodiscover = $null
[System.Windows.Forms.StatusStrip]$statusStrip1 = $null
[System.Windows.Forms.ToolStripStatusLabel]$toolStripStatusLabel1 = $null
[System.Windows.Forms.ComboBox]$dbx__FEpool = $null
[System.Windows.Forms.TextBox]$tbx_RemoveMsg = $null
[System.Windows.Forms.TextBox]$tbx_AddedMsg = $null
[System.Windows.Forms.ComboBox]$dbx_LocLogic = $null
[System.Windows.Forms.ComboBox]$Dbx_LocMsgBool = $null
[System.Windows.Forms.ComboBox]$dbx_LocAction = $null
[System.Windows.Forms.ComboBox]$dbx_GrpBool = $null
[System.Windows.Forms.ComboBox]$dbx_LocBool = $null
[System.Windows.Forms.Label]$label17 = $null
[System.Windows.Forms.Label]$label19 = $null
[System.Windows.Forms.Label]$label18 = $null
[System.Windows.Forms.Label]$label24 = $null
[System.Windows.Forms.Label]$label23 = $null
[System.Windows.Forms.DomainUpDown]$domainUpDown2 = $null
[System.Windows.Forms.DomainUpDown]$domainUpDown1 = $null
[System.Windows.Forms.Label]$label22 = $null
[System.Windows.Forms.Label]$label20 = $null
[System.Windows.Forms.Label]$label21 = $null
[System.Windows.Forms.TextBox]$txt_DomainFQDN = $null
[System.Windows.Forms.Button]$btn_TestDomain = $null
[System.Windows.Forms.Button]$button4 = $null
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Label]$label25 = $null
[System.Windows.Forms.Label]$label26 = $null
[System.Windows.Forms.SaveFileDialog]$ConfigFileSaveDialog = $null
[System.Windows.Forms.Button]$Btn_ConfigBrowse = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
[System.Resources.ResXResourceReader]$resources = New-Object -TypeName System.Resources.ResXResourceReader -ArgumentList "$PSScriptRoot\Start-CsRgsLocBotGui.resx"
$TabControl = (New-Object -TypeName System.Windows.Forms.TabControl)
$RulesTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$dbx__FEpool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_copyrule = (New-Object -TypeName System.Windows.Forms.Button)
$btn_deleterule = (New-Object -TypeName System.Windows.Forms.Button)
$btn_newrule = (New-Object -TypeName System.Windows.Forms.Button)
$lbl_Rulename = (New-Object -TypeName System.Windows.Forms.Label)
$dbx_LocRule = (New-Object -TypeName System.Windows.Forms.ComboBox)
$Grp_RuleConfig = (New-Object -TypeName System.Windows.Forms.GroupBox)
$tbx_RemoveMsg = (New-Object -TypeName System.Windows.Forms.TextBox)
$tbx_AddedMsg = (New-Object -TypeName System.Windows.Forms.TextBox)
$btn_GenerateRemoveMessage = (New-Object -TypeName System.Windows.Forms.Button)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_GenerateAddMessage = (New-Object -TypeName System.Windows.Forms.Button)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_EditGroup = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_DeleteGroup = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_NewGroup = (New-Object -TypeName System.Windows.Forms.Button)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$Tbx_RuleName = (New-Object -TypeName System.Windows.Forms.TextBox)
$dbx_LocLogic = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_RevertRule = (New-Object -TypeName System.Windows.Forms.Button)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$Dbx_LocMsgBool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$dbx_LocAction = (New-Object -TypeName System.Windows.Forms.ComboBox)
$cbx_ResponseGroupQueues = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$dbx_GrpBool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$cbx_groups = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_RuleSave = (New-Object -TypeName System.Windows.Forms.Button)
$dbx_LocBool = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_Location = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$tabPage2 = (New-Object -TypeName System.Windows.Forms.TabPage)
$button4 = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_ConfigBrowse = (New-Object -TypeName System.Windows.Forms.Button)
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$label25 = (New-Object -TypeName System.Windows.Forms.Label)
$label26 = (New-Object -TypeName System.Windows.Forms.Label)
$label24 = (New-Object -TypeName System.Windows.Forms.Label)
$label23 = (New-Object -TypeName System.Windows.Forms.Label)
$domainUpDown2 = (New-Object -TypeName System.Windows.Forms.DomainUpDown)
$domainUpDown1 = (New-Object -TypeName System.Windows.Forms.DomainUpDown)
$label22 = (New-Object -TypeName System.Windows.Forms.Label)
$label20 = (New-Object -TypeName System.Windows.Forms.Label)
$label21 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_TestDomain = (New-Object -TypeName System.Windows.Forms.Button)
$txt_DomainFQDN = (New-Object -TypeName System.Windows.Forms.TextBox)
$label19 = (New-Object -TypeName System.Windows.Forms.Label)
$label18 = (New-Object -TypeName System.Windows.Forms.Label)
$label17 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_TestAutodiscover = (New-Object -TypeName System.Windows.Forms.Button)
$tbx_Autodiscover = (New-Object -TypeName System.Windows.Forms.TextBox)
$label16 = (New-Object -TypeName System.Windows.Forms.Label)
$label15 = (New-Object -TypeName System.Windows.Forms.Label)
$textBox4 = (New-Object -TypeName System.Windows.Forms.TextBox)
$label14 = (New-Object -TypeName System.Windows.Forms.Label)
$textBox3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$btn_TestUserPass = (New-Object -TypeName System.Windows.Forms.Button)
$statusStrip1 = (New-Object -TypeName System.Windows.Forms.StatusStrip)
$toolStripStatusLabel1 = (New-Object -TypeName System.Windows.Forms.ToolStripStatusLabel)
$ConfigFileSaveDialog = (New-Object -TypeName System.Windows.Forms.SaveFileDialog)
$TabControl.SuspendLayout()
$RulesTab.SuspendLayout()
$Grp_RuleConfig.SuspendLayout()
$tabPage2.SuspendLayout()
$MainForm.SuspendLayout()
#
#TabControl
#
$TabControl.Controls.Add($RulesTab)
$TabControl.Controls.Add($tabPage2)
$TabControl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$TabControl.Name = [string]'TabControl'
$TabControl.SelectedIndex = [System.Int32]0
$TabControl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1126,[System.Int32]778))
$TabControl.TabIndex = [System.Int32]34
#
#RulesTab
#
$RulesTab.BackColor = [System.Drawing.Color]::White
$RulesTab.Controls.Add($dbx__FEpool)
$RulesTab.Controls.Add($label13)
$RulesTab.Controls.Add($btn_copyrule)
$RulesTab.Controls.Add($btn_deleterule)
$RulesTab.Controls.Add($btn_newrule)
$RulesTab.Controls.Add($lbl_Rulename)
$RulesTab.Controls.Add($dbx_LocRule)
$RulesTab.Controls.Add($Grp_RuleConfig)
$RulesTab.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$RulesTab.Name = [string]'RulesTab'
$RulesTab.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$RulesTab.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1118,[System.Int32]752))
$RulesTab.TabIndex = [System.Int32]0
$RulesTab.Text = [string]'Rules and Actions'
#
#dbx__FEpool
#
$dbx__FEpool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx__FEpool.FormattingEnabled = $true
$dbx__FEpool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]153,[System.Int32]10))
$dbx__FEpool.Name = [string]'dbx__FEpool'
$dbx__FEpool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]668,[System.Int32]21))
$dbx__FEpool.TabIndex = [System.Int32]21
$dbx__FEpool.Text = [string]'aumelsfbfepool01.skype4badmin.com'
#
#label13
#
$label13.AutoSize = $true
$label13.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label13.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]13))
$label13.Name = [string]'label13'
$label13.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]87,[System.Int32]13))
$label13.TabIndex = [System.Int32]20
$label13.Text = [string]'FrontEnd Pool'
#
#btn_copyrule
#
$btn_copyrule.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_copyrule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]930,[System.Int32]51))
$btn_copyrule.Name = [string]'btn_copyrule'
$btn_copyrule.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_copyrule.TabIndex = [System.Int32]19
$btn_copyrule.Text = [string]'Copy Rule'
$btn_copyrule.UseVisualStyleBackColor = $true
#
#btn_deleterule
#
$btn_deleterule.BackColor = [System.Drawing.Color]::Red
$btn_deleterule.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_deleterule.ForeColor = [System.Drawing.Color]::White
$btn_deleterule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1011,[System.Int32]51))
$btn_deleterule.Name = [string]'btn_deleterule'
$btn_deleterule.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_deleterule.TabIndex = [System.Int32]18
$btn_deleterule.Text = [string]'Delete Rule'
$btn_deleterule.UseVisualStyleBackColor = $false
#
#btn_newrule
#
$btn_newrule.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_newrule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]849,[System.Int32]51))
$btn_newrule.Name = [string]'btn_newrule'
$btn_newrule.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_newrule.TabIndex = [System.Int32]17
$btn_newrule.Text = [string]'New Rule'
$btn_newrule.UseVisualStyleBackColor = $true
#
#lbl_Rulename
#
$lbl_Rulename.AutoSize = $true
$lbl_Rulename.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbl_Rulename.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]56))
$lbl_Rulename.Name = [string]'lbl_Rulename'
$lbl_Rulename.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]33,[System.Int32]13))
$lbl_Rulename.TabIndex = [System.Int32]16
$lbl_Rulename.Text = [string]'Rule'
#
#dbx_LocRule
#
$dbx_LocRule.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx_LocRule.FormattingEnabled = $true
$dbx_LocRule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]153,[System.Int32]53))
$dbx_LocRule.Name = [string]'dbx_LocRule'
$dbx_LocRule.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]668,[System.Int32]21))
$dbx_LocRule.TabIndex = [System.Int32]15
$dbx_LocRule.Text = [string]'Remove users from Melbourne Reception when on Skype4Badmin Wifi'
#
#Grp_RuleConfig
#
$Grp_RuleConfig.Controls.Add($tbx_RemoveMsg)
$Grp_RuleConfig.Controls.Add($tbx_AddedMsg)
$Grp_RuleConfig.Controls.Add($btn_GenerateRemoveMessage)
$Grp_RuleConfig.Controls.Add($label12)
$Grp_RuleConfig.Controls.Add($Btn_GenerateAddMessage)
$Grp_RuleConfig.Controls.Add($label11)
$Grp_RuleConfig.Controls.Add($Btn_EditGroup)
$Grp_RuleConfig.Controls.Add($Btn_DeleteGroup)
$Grp_RuleConfig.Controls.Add($Btn_NewGroup)
$Grp_RuleConfig.Controls.Add($label10)
$Grp_RuleConfig.Controls.Add($Tbx_RuleName)
$Grp_RuleConfig.Controls.Add($dbx_LocLogic)
$Grp_RuleConfig.Controls.Add($label9)
$Grp_RuleConfig.Controls.Add($Btn_RevertRule)
$Grp_RuleConfig.Controls.Add($label8)
$Grp_RuleConfig.Controls.Add($label5)
$Grp_RuleConfig.Controls.Add($Dbx_LocMsgBool)
$Grp_RuleConfig.Controls.Add($label7)
$Grp_RuleConfig.Controls.Add($label6)
$Grp_RuleConfig.Controls.Add($label4)
$Grp_RuleConfig.Controls.Add($dbx_LocAction)
$Grp_RuleConfig.Controls.Add($cbx_ResponseGroupQueues)
$Grp_RuleConfig.Controls.Add($label3)
$Grp_RuleConfig.Controls.Add($dbx_GrpBool)
$Grp_RuleConfig.Controls.Add($cbx_groups)
$Grp_RuleConfig.Controls.Add($label2)
$Grp_RuleConfig.Controls.Add($btn_RuleSave)
$Grp_RuleConfig.Controls.Add($dbx_LocBool)
$Grp_RuleConfig.Controls.Add($label1)
$Grp_RuleConfig.Controls.Add($cbx_Location)
$Grp_RuleConfig.Enabled = $false
$Grp_RuleConfig.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$Grp_RuleConfig.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]16,[System.Int32]80))
$Grp_RuleConfig.Name = [string]'Grp_RuleConfig'
$Grp_RuleConfig.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1085,[System.Int32]656))
$Grp_RuleConfig.TabIndex = [System.Int32]14
$Grp_RuleConfig.TabStop = $false
$Grp_RuleConfig.Text = [string]'Configure Rules'
#
#tbx_RemoveMsg
#
$tbx_RemoveMsg.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]225,[System.Int32]556))
$tbx_RemoveMsg.Multiline = $true
$tbx_RemoveMsg.Name = [string]'tbx_RemoveMsg'
$tbx_RemoveMsg.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]75))
$tbx_RemoveMsg.TabIndex = [System.Int32]35
$tbx_RemoveMsg.Text = $resources.GetString([string]'tbx_RemoveMsg.Text')

#
#tbx_AddedMsg
#
$tbx_AddedMsg.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]225,[System.Int32]461))
$tbx_AddedMsg.Multiline = $true
$tbx_AddedMsg.Name = [string]'tbx_AddedMsg'
$tbx_AddedMsg.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]75))
$tbx_AddedMsg.TabIndex = [System.Int32]34
$tbx_AddedMsg.Text = $resources.GetString([string]'tbx_AddedMsg.Text')

$tbx_AddedMsg.add_TextChanged($textBox1_TextChanged)
#
#btn_GenerateRemoveMessage
#
$btn_GenerateRemoveMessage.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_GenerateRemoveMessage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]112,[System.Int32]608))
$btn_GenerateRemoveMessage.Name = [string]'btn_GenerateRemoveMessage'
$btn_GenerateRemoveMessage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]107,[System.Int32]23))
$btn_GenerateRemoveMessage.TabIndex = [System.Int32]33
$btn_GenerateRemoveMessage.Text = [string]'Autogenerate'
$btn_GenerateRemoveMessage.UseVisualStyleBackColor = $true
#
#label12
#
$label12.AutoSize = $true
$label12.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label12.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]559))
$label12.Name = [string]'label12'
$label12.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]211,[System.Int32]13))
$label12.TabIndex = [System.Int32]31
$label12.Text = [string]'Removal message from RGSLocBot '
#
#Btn_GenerateAddMessage
#
$Btn_GenerateAddMessage.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_GenerateAddMessage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]112,[System.Int32]513))
$Btn_GenerateAddMessage.Name = [string]'Btn_GenerateAddMessage'
$Btn_GenerateAddMessage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]107,[System.Int32]23))
$Btn_GenerateAddMessage.TabIndex = [System.Int32]30
$Btn_GenerateAddMessage.Text = [string]'Autogenerate'
$Btn_GenerateAddMessage.UseVisualStyleBackColor = $true
#
#label11
#
$label11.AutoSize = $true
$label11.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label11.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]19,[System.Int32]464))
$label11.Name = [string]'label11'
$label11.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]198,[System.Int32]13))
$label11.TabIndex = [System.Int32]27
$label11.Text = [string]'Added message from RGSLocBot '
$label11.add_Click($label11_Click)
#
#Btn_EditGroup
#
$Btn_EditGroup.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_EditGroup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]497,[System.Int32]418))
$Btn_EditGroup.Name = [string]'Btn_EditGroup'
$Btn_EditGroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]107,[System.Int32]23))
$Btn_EditGroup.TabIndex = [System.Int32]26
$Btn_EditGroup.Text = [string]'Edit Static Group'
$Btn_EditGroup.UseVisualStyleBackColor = $true
#
#Btn_DeleteGroup
#
$Btn_DeleteGroup.BackColor = [System.Drawing.Color]::Red
$Btn_DeleteGroup.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_DeleteGroup.ForeColor = [System.Drawing.Color]::White
$Btn_DeleteGroup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]623,[System.Int32]418))
$Btn_DeleteGroup.Name = [string]'Btn_DeleteGroup'
$Btn_DeleteGroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]23))
$Btn_DeleteGroup.TabIndex = [System.Int32]25
$Btn_DeleteGroup.Text = [string]'Delete Group'
$Btn_DeleteGroup.UseVisualStyleBackColor = $false
#
#Btn_NewGroup
#
$Btn_NewGroup.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_NewGroup.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]405,[System.Int32]418))
$Btn_NewGroup.Name = [string]'Btn_NewGroup'
$Btn_NewGroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]23))
$Btn_NewGroup.TabIndex = [System.Int32]24
$Btn_NewGroup.Text = [string]'Add Group...'
$Btn_NewGroup.UseVisualStyleBackColor = $true
#
#label10
#
$label10.AutoSize = $true
$label10.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]27))
$label10.Name = [string]'label10'
$label10.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]60,[System.Int32]13))
$label10.TabIndex = [System.Int32]22
$label10.Text = [string]'Rule Name'
#
#Tbx_RuleName
#
$Tbx_RuleName.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$Tbx_RuleName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]68,[System.Int32]24))
$Tbx_RuleName.Name = [string]'Tbx_RuleName'
$Tbx_RuleName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]811,[System.Int32]20))
$Tbx_RuleName.TabIndex = [System.Int32]21
$Tbx_RuleName.Text = [string]'Remove users from Melbourne Reception when on Skype4Badmin Wifi'
#
#dbx_LocLogic
#
$dbx_LocLogic.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$dbx_LocLogic.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx_LocLogic.FormattingEnabled = $true
$dbx_LocLogic.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]54))
$dbx_LocLogic.Name = [string]'dbx_LocLogic'
$dbx_LocLogic.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]21))
$dbx_LocLogic.TabIndex = [System.Int32]20
$dbx_LocLogic.Text = [string]'some'
#
#label9
#
$label9.AutoSize = $true
$label9.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]521,[System.Int32]57))
$label9.Name = [string]'label9'
$label9.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]113,[System.Int32]13))
$label9.TabIndex = [System.Int32]19
$label9.Text = [string]'of the following groups'
#
#Btn_RevertRule
#
$Btn_RevertRule.Enabled = $false
$Btn_RevertRule.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_RevertRule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]885,[System.Int32]22))
$Btn_RevertRule.Name = [string]'Btn_RevertRule'
$Btn_RevertRule.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Btn_RevertRule.TabIndex = [System.Int32]10
$Btn_RevertRule.Text = [string]'Revert'
$Btn_RevertRule.UseVisualStyleBackColor = $true
#
#label8
#
$label8.AutoSize = $true
$label8.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]736,[System.Int32]79))
$label8.Name = [string]'label8'
$label8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]157,[System.Int32]13))
$label8.TabIndex = [System.Int32]18
$label8.Text = [string]'"Response Group" Groups'
#
#label5
#
$label5.AutoSize = $true
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1037,[System.Int32]57))
$label5.Name = [string]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]33,[System.Int32]13))
$label5.TabIndex = [System.Int32]15
$label5.Text = [string]'them.'
#
#Dbx_LocMsgBool
#
$Dbx_LocMsgBool.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$Dbx_LocMsgBool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$Dbx_LocMsgBool.FormattingEnabled = $true
$Dbx_LocMsgBool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]939,[System.Int32]54))
$Dbx_LocMsgBool.Name = [string]'Dbx_LocMsgBool'
$Dbx_LocMsgBool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]21))
$Dbx_LocMsgBool.TabIndex = [System.Int32]14
$Dbx_LocMsgBool.Text = [string]'dont message'
#
#label7
#
$label7.AutoSize = $true
$label7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]402,[System.Int32]79))
$label7.Name = [string]'label7'
$label7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]122,[System.Int32]13))
$label7.TabIndex = [System.Int32]17
$label7.Text = [string]'AD / LocBot Groups'
#
#label6
#
$label6.AutoSize = $true
$label6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]65,[System.Int32]79))
$label6.Name = [string]'label6'
$label6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]62,[System.Int32]13))
$label6.TabIndex = [System.Int32]16
$label6.Text = [string]'Locations'
#
#label4
#
$label4.AutoSize = $true
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]713,[System.Int32]57))
$label4.Name = [string]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]220,[System.Int32]13))
$label4.TabIndex = [System.Int32]13
$label4.Text = [string]'them from the following response groups and '
#
#dbx_LocAction
#
$dbx_LocAction.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$dbx_LocAction.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx_LocAction.FormattingEnabled = $true
$dbx_LocAction.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]640,[System.Int32]54))
$dbx_LocAction.Name = [string]'dbx_LocAction'
$dbx_LocAction.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]21))
$dbx_LocAction.TabIndex = [System.Int32]12
$dbx_LocAction.Text = [string]'remove'
#
#cbx_ResponseGroupQueues
#
$cbx_ResponseGroupQueues.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$cbx_ResponseGroupQueues.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_ResponseGroupQueues.FormattingEnabled = $true
$cbx_ResponseGroupQueues.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]739,[System.Int32]95))
$cbx_ResponseGroupQueues.Name = [string]'cbx_ResponseGroupQueues'
$cbx_ResponseGroupQueues.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]347))
$cbx_ResponseGroupQueues.TabIndex = [System.Int32]11
#
#label3
#
$label3.AutoSize = $true
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]394,[System.Int32]57))
$label3.Name = [string]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]68,[System.Int32]13))
$label3.TabIndex = [System.Int32]10
$label3.Text = [string]'a member of '
#
#dbx_GrpBool
#
$dbx_GrpBool.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$dbx_GrpBool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx_GrpBool.FormattingEnabled = $true
$dbx_GrpBool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]349,[System.Int32]54))
$dbx_GrpBool.Name = [string]'dbx_GrpBool'
$dbx_GrpBool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]46,[System.Int32]21))
$dbx_GrpBool.TabIndex = [System.Int32]9
$dbx_GrpBool.Text = [string]'is not'
#
#cbx_groups
#
$cbx_groups.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$cbx_groups.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_groups.FormattingEnabled = $true
$cbx_groups.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]405,[System.Int32]95))
$cbx_groups.Name = [string]'cbx_groups'
$cbx_groups.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]317))
$cbx_groups.TabIndex = [System.Int32]8
#
#label2
#
$label2.AutoSize = $true
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]142,[System.Int32]57))
$label2.Name = [string]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]201,[System.Int32]13))
$label2.TabIndex = [System.Int32]7
$label2.Text = [string]'located in any the following locations and'
#
#btn_RuleSave
#
$btn_RuleSave.BackColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$btn_RuleSave.Enabled = $false
$btn_RuleSave.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_RuleSave.ForeColor = [System.Drawing.Color]::White
$btn_RuleSave.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]966,[System.Int32]22))
$btn_RuleSave.Name = [string]'btn_RuleSave'
$btn_RuleSave.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_RuleSave.TabIndex = [System.Int32]6
$btn_RuleSave.Text = [string]'Save'
$btn_RuleSave.UseVisualStyleBackColor = $false
#
#dbx_LocBool
#
$dbx_LocBool.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$dbx_LocBool.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$dbx_LocBool.FormattingEnabled = $true
$dbx_LocBool.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]54))
$dbx_LocBool.Name = [string]'dbx_LocBool'
$dbx_LocBool.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]21))
$dbx_LocBool.TabIndex = [System.Int32]5
$dbx_LocBool.Text = [string]'is not'
#
#label1
#
$label1.AutoSize = $true
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]6,[System.Int32]57))
$label1.Name = [string]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]77,[System.Int32]13))
$label1.TabIndex = [System.Int32]2
$label1.Text = [string]'When the user'
#
#cbx_Location
#
$cbx_Location.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$cbx_Location.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$cbx_Location.FormattingEnabled = $true
$cbx_Location.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]68,[System.Int32]95))
$cbx_Location.Name = [string]'cbx_Location'
$cbx_Location.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]302,[System.Int32]347))
$cbx_Location.TabIndex = [System.Int32]1
#
#tabPage2
#
$tabPage2.BackColor = [System.Drawing.Color]::White
$tabPage2.Controls.Add($button4)
$tabPage2.Controls.Add($Btn_ConfigBrowse)
$tabPage2.Controls.Add($button2)
$tabPage2.Controls.Add($textBox1)
$tabPage2.Controls.Add($label25)
$tabPage2.Controls.Add($label26)
$tabPage2.Controls.Add($label24)
$tabPage2.Controls.Add($label23)
$tabPage2.Controls.Add($domainUpDown2)
$tabPage2.Controls.Add($domainUpDown1)
$tabPage2.Controls.Add($label22)
$tabPage2.Controls.Add($label20)
$tabPage2.Controls.Add($label21)
$tabPage2.Controls.Add($btn_TestDomain)
$tabPage2.Controls.Add($txt_DomainFQDN)
$tabPage2.Controls.Add($label19)
$tabPage2.Controls.Add($label18)
$tabPage2.Controls.Add($label17)
$tabPage2.Controls.Add($btn_TestAutodiscover)
$tabPage2.Controls.Add($tbx_Autodiscover)
$tabPage2.Controls.Add($label16)
$tabPage2.Controls.Add($label15)
$tabPage2.Controls.Add($textBox4)
$tabPage2.Controls.Add($label14)
$tabPage2.Controls.Add($textBox3)
$tabPage2.Controls.Add($btn_TestUserPass)
$tabPage2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabPage2.Name = [string]'tabPage2'
$tabPage2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabPage2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1118,[System.Int32]752))
$tabPage2.TabIndex = [System.Int32]1
$tabPage2.Text = [string]'Configuration'
#
#button4
#
$button4.BackColor = [System.Drawing.Color]::White
$button4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]867,[System.Int32]504))
$button4.Name = [string]'button4'
$button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button4.TabIndex = [System.Int32]50
$button4.Text = [string]'Save'
$button4.UseVisualStyleBackColor = $false
#
#Btn_ConfigBrowse
#
$Btn_ConfigBrowse.BackColor = [System.Drawing.Color]::White
$Btn_ConfigBrowse.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$Btn_ConfigBrowse.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Btn_ConfigBrowse.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]948,[System.Int32]504))
$Btn_ConfigBrowse.Name = [string]'Btn_ConfigBrowse'
$Btn_ConfigBrowse.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$Btn_ConfigBrowse.TabIndex = [System.Int32]49
$Btn_ConfigBrowse.Text = [string]'Browse...'
$Btn_ConfigBrowse.UseVisualStyleBackColor = $false
$Btn_ConfigBrowse.add_Click($Btn_ConfigBrowse_Click)
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::White
$button2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]786,[System.Int32]505))
$button2.Name = [string]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button2.TabIndex = [System.Int32]48
$button2.Text = [string]'Load'
$button2.UseVisualStyleBackColor = $false
#
#textBox1
#
$textBox1.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]507))
$textBox1.Name = [string]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]650,[System.Int32]20))
$textBox1.TabIndex = [System.Int32]47
$textBox1.Text = [string]'Skype4bAdmin.local'
#
#label25
#
$label25.AutoSize = $true
$label25.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]510))
$label25.Name = [string]'label25'
$label25.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]13))
$label25.TabIndex = [System.Int32]46
$label25.Text = [string]'File Location'
#
#label26
#
$label26.AutoSize = $true
$label26.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label26.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]482))
$label26.Name = [string]'label26'
$label26.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]13))
$label26.TabIndex = [System.Int32]45
$label26.Text = [string]'Config File'
#
#label24
#
$label24.AutoSize = $true
$label24.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]268,[System.Int32]388))
$label24.Name = [string]'label24'
$label24.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]812,[System.Int32]13))
$label24.TabIndex = [System.Int32]44
$label24.Text = [string]'If the Update-CsRgsLocBotQueues.ps1 detects more than the specified amount of user changes per run. The script will fire an error and exit to prevent excessive changes.'
#
#label23
#
$label23.AutoSize = $true
$label23.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]268,[System.Int32]361))
$label23.Name = [string]'label23'
$label23.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]786,[System.Int32]13))
$label23.TabIndex = [System.Int32]43
$label23.Text = [string]'If the Update-CsRgsLocBotQueues.ps1 scheduled task is run more often than this. The script wil exit without making changes. This prevents excessive backend load'
#
#domainUpDown2
#
$domainUpDown2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]142,[System.Int32]359))
$domainUpDown2.Name = [string]'domainUpDown2'
$domainUpDown2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]20))
$domainUpDown2.TabIndex = [System.Int32]42
$domainUpDown2.Text = [string]'domainUpDown2'
#
#domainUpDown1
#
$domainUpDown1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]142,[System.Int32]386))
$domainUpDown1.Name = [string]'domainUpDown1'
$domainUpDown1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]120,[System.Int32]20))
$domainUpDown1.TabIndex = [System.Int32]41
$domainUpDown1.Text = [string]'domainUpDown1'
#
#label22
#
$label22.AutoSize = $true
$label22.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]388))
$label22.Name = [string]'label22'
$label22.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]114,[System.Int32]13))
$label22.TabIndex = [System.Int32]40
$label22.Text = [string]'Max Changes Per Run'
#
#label20
#
$label20.AutoSize = $true
$label20.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]361))
$label20.Name = [string]'label20'
$label20.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]13))
$label20.TabIndex = [System.Int32]37
$label20.Text = [string]'Min Update Interval'
#
#label21
#
$label21.AutoSize = $true
$label21.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label21.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]333))
$label21.Name = [string]'label21'
$label21.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]93,[System.Int32]13))
$label21.TabIndex = [System.Int32]36
$label21.Text = [string]'Tool Behaviour'
#
#btn_TestDomain
#
$btn_TestDomain.BackColor = [System.Drawing.Color]::Yellow
$btn_TestDomain.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_TestDomain.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btn_TestDomain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]948,[System.Int32]240))
$btn_TestDomain.Name = [string]'btn_TestDomain'
$btn_TestDomain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_TestDomain.TabIndex = [System.Int32]35
$btn_TestDomain.Text = [string]'Test'
$btn_TestDomain.UseVisualStyleBackColor = $false
#
#txt_DomainFQDN
#
$txt_DomainFQDN.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$txt_DomainFQDN.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]242))
$txt_DomainFQDN.Name = [string]'txt_DomainFQDN'
$txt_DomainFQDN.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]20))
$txt_DomainFQDN.TabIndex = [System.Int32]34
$txt_DomainFQDN.Text = [string]'Skype4bAdmin.local'
#
#label19
#
$label19.AutoSize = $true
$label19.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]245))
$label19.Name = [string]'label19'
$label19.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]13))
$label19.TabIndex = [System.Int32]33
$label19.Text = [string]'Domain FQDN'
$label19.add_Click($label19_Click)
#
#label18
#
$label18.AutoSize = $true
$label18.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label18.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]217))
$label18.Name = [string]'label18'
$label18.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]13))
$label18.TabIndex = [System.Int32]32
$label18.Text = [string]'Domain Config'
#
#label17
#
$label17.AutoSize = $true
$label17.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label17.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]56))
$label17.Name = [string]'label17'
$label17.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]13))
$label17.TabIndex = [System.Int32]31
$label17.Text = [string]'UCWA Config'
$label17.add_Click($label17_Click)
#
#btn_TestAutodiscover
#
$btn_TestAutodiscover.BackColor = [System.Drawing.Color]::Yellow
$btn_TestAutodiscover.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_TestAutodiscover.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btn_TestAutodiscover.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]948,[System.Int32]133))
$btn_TestAutodiscover.Name = [string]'btn_TestAutodiscover'
$btn_TestAutodiscover.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_TestAutodiscover.TabIndex = [System.Int32]30
$btn_TestAutodiscover.Text = [string]'Test'
$btn_TestAutodiscover.UseVisualStyleBackColor = $false
$btn_TestAutodiscover.add_Click($btn_TestAutodiscover_Click)
#
#tbx_Autodiscover
#
$tbx_Autodiscover.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$tbx_Autodiscover.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]135))
$tbx_Autodiscover.Name = [string]'tbx_Autodiscover'
$tbx_Autodiscover.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]20))
$tbx_Autodiscover.TabIndex = [System.Int32]29
$tbx_Autodiscover.Text = [string]'https://lyncdiscover.skype4badmin.com'
$tbx_Autodiscover.add_TextChanged($tbx_Autodiscover_TextChanged)
#
#label16
#
$label16.AutoSize = $true
$label16.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]138))
$label16.Name = [string]'label16'
$label16.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]97,[System.Int32]13))
$label16.TabIndex = [System.Int32]28
$label16.Text = [string]'LyncDiscover URL'
#
#label15
#
$label15.AutoSize = $true
$label15.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]112))
$label15.Name = [string]'label15'
$label15.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]13))
$label15.TabIndex = [System.Int32]27
$label15.Text = [string]'Bot SIP Password'
#
#textBox4
#
$textBox4.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$textBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]109))
$textBox4.Name = [string]'textBox4'
$textBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]20))
$textBox4.TabIndex = [System.Int32]26
$textBox4.Text = [string]'aninsecurepassword'
#
#label14
#
$label14.AutoSize = $true
$label14.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]22,[System.Int32]86))
$label14.Name = [string]'label14'
$label14.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]84,[System.Int32]13))
$label14.TabIndex = [System.Int32]25
$label14.Text = [string]'Bot SIP Address'
$label14.add_Click($label14_Click)
#
#textBox3
#
$textBox3.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$textBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]126,[System.Int32]83))
$textBox3.Name = [string]'textBox3'
$textBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]20))
$textBox3.TabIndex = [System.Int32]24
$textBox3.Text = [string]'RGSLocBot@Skype4bAdmin.com'
#
#btn_TestUserPass
#
$btn_TestUserPass.BackColor = [System.Drawing.Color]::Yellow
$btn_TestUserPass.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$btn_TestUserPass.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([string]'Microsoft Sans Serif',[System.Single]8.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$btn_TestUserPass.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]948,[System.Int32]107))
$btn_TestUserPass.Name = [string]'btn_TestUserPass'
$btn_TestUserPass.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_TestUserPass.TabIndex = [System.Int32]23
$btn_TestUserPass.Text = [string]'Test'
$btn_TestUserPass.UseVisualStyleBackColor = $false
#
#statusStrip1
#
$statusStrip1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]807))
$statusStrip1.Name = [string]'statusStrip1'
$statusStrip1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1148,[System.Int32]22))
$statusStrip1.TabIndex = [System.Int32]35
$statusStrip1.Text = [string]'statusStrip1'
#
#toolStripStatusLabel1
#
$toolStripStatusLabel1.Name = [string]'toolStripStatusLabel1'
$toolStripStatusLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]118,[System.Int32]17))
$toolStripStatusLabel1.Text = [string]'toolStripStatusLabel1'
$toolStripStatusLabel1.add_Click($toolStripStatusLabel1_Click)
#
#MainForm
#
$MainForm.BackColor = [System.Drawing.Color]::White
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1148,[System.Int32]829))
$MainForm.Controls.Add($statusStrip1)
$MainForm.Controls.Add($TabControl)
$MainForm.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$MainForm.Name = [string]'MainForm'
$MainForm.Text = [string]'Skype4BAdmin RGSLocBot Configuration'
$TabControl.ResumeLayout($false)
$RulesTab.ResumeLayout($false)
$RulesTab.PerformLayout()
$Grp_RuleConfig.ResumeLayout($false)
$Grp_RuleConfig.PerformLayout()
$tabPage2.ResumeLayout($false)
$tabPage2.PerformLayout()
$MainForm.ResumeLayout($false)
$MainForm.PerformLayout()
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name TabControl -Value $TabControl -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name RulesTab -Value $RulesTab -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label13 -Value $label13 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_copyrule -Value $btn_copyrule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_deleterule -Value $btn_deleterule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_newrule -Value $btn_newrule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name lbl_Rulename -Value $lbl_Rulename -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx_LocRule -Value $dbx_LocRule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Grp_RuleConfig -Value $Grp_RuleConfig -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_GenerateRemoveMessage -Value $btn_GenerateRemoveMessage -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label12 -Value $label12 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_GenerateAddMessage -Value $Btn_GenerateAddMessage -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label11 -Value $label11 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_EditGroup -Value $Btn_EditGroup -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_DeleteGroup -Value $Btn_DeleteGroup -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_NewGroup -Value $Btn_NewGroup -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label10 -Value $label10 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Tbx_RuleName -Value $Tbx_RuleName -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_RevertRule -Value $Btn_RevertRule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_ResponseGroupQueues -Value $cbx_ResponseGroupQueues -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_groups -Value $cbx_groups -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_RuleSave -Value $btn_RuleSave -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_Location -Value $cbx_Location -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tabPage2 -Value $tabPage2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label15 -Value $label15 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox4 -Value $textBox4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label14 -Value $label14 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox3 -Value $textBox3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_TestAutodiscover -Value $btn_TestAutodiscover -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label16 -Value $label16 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_TestUserPass -Value $btn_TestUserPass -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tbx_Autodiscover -Value $tbx_Autodiscover -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name statusStrip1 -Value $statusStrip1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name toolStripStatusLabel1 -Value $toolStripStatusLabel1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx__FEpool -Value $dbx__FEpool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tbx_RemoveMsg -Value $tbx_RemoveMsg -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tbx_AddedMsg -Value $tbx_AddedMsg -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx_LocLogic -Value $dbx_LocLogic -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Dbx_LocMsgBool -Value $Dbx_LocMsgBool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx_LocAction -Value $dbx_LocAction -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx_GrpBool -Value $dbx_GrpBool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name dbx_LocBool -Value $dbx_LocBool -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label17 -Value $label17 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label19 -Value $label19 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label18 -Value $label18 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label24 -Value $label24 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label23 -Value $label23 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name domainUpDown2 -Value $domainUpDown2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name domainUpDown1 -Value $domainUpDown1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label22 -Value $label22 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label20 -Value $label20 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label21 -Value $label21 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name txt_DomainFQDN -Value $txt_DomainFQDN -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_TestDomain -Value $btn_TestDomain -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button4 -Value $button4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label25 -Value $label25 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label26 -Value $label26 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name ConfigFileSaveDialog -Value $ConfigFileSaveDialog -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_ConfigBrowse -Value $Btn_ConfigBrowse -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
