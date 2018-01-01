[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$MainForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.TabControl]$TabControl = $null
[System.Windows.Forms.TabPage]$RulesTab = $null
[System.Windows.Forms.ComboBox]$comboBox6 = $null
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
[System.Windows.Forms.ComboBox]$comboBox5 = $null
[System.Windows.Forms.Label]$label9 = $null
[System.Windows.Forms.Button]$Btn_RevertRule = $null
[System.Windows.Forms.Label]$label8 = $null
[System.Windows.Forms.Label]$label5 = $null
[System.Windows.Forms.ComboBox]$comboBox4 = $null
[System.Windows.Forms.Label]$label7 = $null
[System.Windows.Forms.Label]$label6 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.ComboBox]$comboBox3 = $null
[System.Windows.Forms.CheckedListBox]$cbx_ResponseGroupQueues = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.ComboBox]$comboBox2 = $null
[System.Windows.Forms.CheckedListBox]$cbx_groups = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Button]$btn_RuleSave = $null
[System.Windows.Forms.ComboBox]$comboBox1 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.CheckedListBox]$cbx_Location = $null
[System.Windows.Forms.TabPage]$tabPage2 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$TabControl = (New-Object -TypeName System.Windows.Forms.TabControl)
$RulesTab = (New-Object -TypeName System.Windows.Forms.TabPage)
$comboBox6 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label13 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_copyrule = (New-Object -TypeName System.Windows.Forms.Button)
$btn_deleterule = (New-Object -TypeName System.Windows.Forms.Button)
$btn_newrule = (New-Object -TypeName System.Windows.Forms.Button)
$lbl_Rulename = (New-Object -TypeName System.Windows.Forms.Label)
$dbx_LocRule = (New-Object -TypeName System.Windows.Forms.ComboBox)
$Grp_RuleConfig = (New-Object -TypeName System.Windows.Forms.GroupBox)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$btn_GenerateRemoveMessage = (New-Object -TypeName System.Windows.Forms.Button)
$label12 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_GenerateAddMessage = (New-Object -TypeName System.Windows.Forms.Button)
$label11 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_EditGroup = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_DeleteGroup = (New-Object -TypeName System.Windows.Forms.Button)
$Btn_NewGroup = (New-Object -TypeName System.Windows.Forms.Button)
$label10 = (New-Object -TypeName System.Windows.Forms.Label)
$Tbx_RuleName = (New-Object -TypeName System.Windows.Forms.TextBox)
$comboBox5 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label9 = (New-Object -TypeName System.Windows.Forms.Label)
$Btn_RevertRule = (New-Object -TypeName System.Windows.Forms.Button)
$label8 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$comboBox4 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label7 = (New-Object -TypeName System.Windows.Forms.Label)
$label6 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$comboBox3 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$cbx_ResponseGroupQueues = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$comboBox2 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$cbx_groups = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$btn_RuleSave = (New-Object -TypeName System.Windows.Forms.Button)
$comboBox1 = (New-Object -TypeName System.Windows.Forms.ComboBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$cbx_Location = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$tabPage2 = (New-Object -TypeName System.Windows.Forms.TabPage)
$TabControl.SuspendLayout()
$RulesTab.SuspendLayout()
$Grp_RuleConfig.SuspendLayout()
$MainForm.SuspendLayout()
#
#TabControl
#
$TabControl.Controls.Add($RulesTab)
$TabControl.Controls.Add($tabPage2)
$TabControl.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]42))
$TabControl.Name = [string]'TabControl'
$TabControl.SelectedIndex = [System.Int32]0
$TabControl.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1126,[System.Int32]778))
$TabControl.TabIndex = [System.Int32]34
#
#RulesTab
#
$RulesTab.Controls.Add($comboBox6)
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
$RulesTab.Text = [string]'tabPage1'
$RulesTab.UseVisualStyleBackColor = $true
#
#comboBox6
#
$comboBox6.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox6.FormattingEnabled = $true
$comboBox6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]153,[System.Int32]10))
$comboBox6.Name = [string]'comboBox6'
$comboBox6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]668,[System.Int32]21))
$comboBox6.TabIndex = [System.Int32]21
$comboBox6.Text = [string]'aumelsfbfepool01.skype4badmin.com'
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
$Grp_RuleConfig.Controls.Add($textBox2)
$Grp_RuleConfig.Controls.Add($textBox1)
$Grp_RuleConfig.Controls.Add($btn_GenerateRemoveMessage)
$Grp_RuleConfig.Controls.Add($label12)
$Grp_RuleConfig.Controls.Add($Btn_GenerateAddMessage)
$Grp_RuleConfig.Controls.Add($label11)
$Grp_RuleConfig.Controls.Add($Btn_EditGroup)
$Grp_RuleConfig.Controls.Add($Btn_DeleteGroup)
$Grp_RuleConfig.Controls.Add($Btn_NewGroup)
$Grp_RuleConfig.Controls.Add($label10)
$Grp_RuleConfig.Controls.Add($Tbx_RuleName)
$Grp_RuleConfig.Controls.Add($comboBox5)
$Grp_RuleConfig.Controls.Add($label9)
$Grp_RuleConfig.Controls.Add($Btn_RevertRule)
$Grp_RuleConfig.Controls.Add($label8)
$Grp_RuleConfig.Controls.Add($label5)
$Grp_RuleConfig.Controls.Add($comboBox4)
$Grp_RuleConfig.Controls.Add($label7)
$Grp_RuleConfig.Controls.Add($label6)
$Grp_RuleConfig.Controls.Add($label4)
$Grp_RuleConfig.Controls.Add($comboBox3)
$Grp_RuleConfig.Controls.Add($cbx_ResponseGroupQueues)
$Grp_RuleConfig.Controls.Add($label3)
$Grp_RuleConfig.Controls.Add($comboBox2)
$Grp_RuleConfig.Controls.Add($cbx_groups)
$Grp_RuleConfig.Controls.Add($label2)
$Grp_RuleConfig.Controls.Add($btn_RuleSave)
$Grp_RuleConfig.Controls.Add($comboBox1)
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
#textBox2
#
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]225,[System.Int32]556))
$textBox2.Multiline = $true
$textBox2.Name = [string]'textBox2'
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]75))
$textBox2.TabIndex = [System.Int32]35
#
#textBox1
#
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]225,[System.Int32]461))
$textBox1.Multiline = $true
$textBox1.Name = [string]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]816,[System.Int32]75))
$textBox1.TabIndex = [System.Int32]34
$textBox1.add_TextChanged($textBox1_TextChanged)
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
$Tbx_RuleName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]840,[System.Int32]20))
$Tbx_RuleName.TabIndex = [System.Int32]21
$Tbx_RuleName.Text = [string]'Remove users from Melbourne Reception when on Skype4Badmin Wifi'
#
#comboBox5
#
$comboBox5.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$comboBox5.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox5.FormattingEnabled = $true
$comboBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]54))
$comboBox5.Name = [string]'comboBox5'
$comboBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]55,[System.Int32]21))
$comboBox5.TabIndex = [System.Int32]20
$comboBox5.Text = [string]'some'
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
$Btn_RevertRule.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]914,[System.Int32]22))
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
#comboBox4
#
$comboBox4.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$comboBox4.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox4.FormattingEnabled = $true
$comboBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]939,[System.Int32]54))
$comboBox4.Name = [string]'comboBox4'
$comboBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]21))
$comboBox4.TabIndex = [System.Int32]14
$comboBox4.Text = [string]'dont message'
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
#comboBox3
#
$comboBox3.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$comboBox3.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox3.FormattingEnabled = $true
$comboBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]640,[System.Int32]54))
$comboBox3.Name = [string]'comboBox3'
$comboBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]67,[System.Int32]21))
$comboBox3.TabIndex = [System.Int32]12
$comboBox3.Text = [string]'remove'
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
#comboBox2
#
$comboBox2.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$comboBox2.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox2.FormattingEnabled = $true
$comboBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]339,[System.Int32]54))
$comboBox2.Name = [string]'comboBox2'
$comboBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]21))
$comboBox2.TabIndex = [System.Int32]9
$comboBox2.Text = [string]'is not'
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
$btn_RuleSave.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]995,[System.Int32]22))
$btn_RuleSave.Name = [string]'btn_RuleSave'
$btn_RuleSave.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$btn_RuleSave.TabIndex = [System.Int32]6
$btn_RuleSave.Text = [string]'Save'
$btn_RuleSave.UseVisualStyleBackColor = $false
#
#comboBox1
#
$comboBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::Popup
$comboBox1.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$comboBox1.FormattingEnabled = $true
$comboBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]84,[System.Int32]54))
$comboBox1.Name = [string]'comboBox1'
$comboBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]56,[System.Int32]21))
$comboBox1.TabIndex = [System.Int32]5
$comboBox1.Text = [string]'is not'
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
$tabPage2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]22))
$tabPage2.Name = [string]'tabPage2'
$tabPage2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]3))
$tabPage2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1118,[System.Int32]752))
$tabPage2.TabIndex = [System.Int32]1
$tabPage2.Text = [string]'tabPage2'
$tabPage2.UseVisualStyleBackColor = $true
#
#MainForm
#
$MainForm.BackColor = [System.Drawing.Color]::White
$MainForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1249,[System.Int32]946))
$MainForm.Controls.Add($TabControl)
$MainForm.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]8)),([System.Int32]([System.Byte][System.Byte]116)),([System.Int32]([System.Byte][System.Byte]170)))

$MainForm.Name = [string]'MainForm'
$MainForm.Text = [string]'Skype4BAdmin RGSLocBot Configuration'
$TabControl.ResumeLayout($false)
$RulesTab.ResumeLayout($false)
$RulesTab.PerformLayout()
$Grp_RuleConfig.ResumeLayout($false)
$Grp_RuleConfig.PerformLayout()
$MainForm.ResumeLayout($false)
Add-Member -InputObject $MainForm -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name TabControl -Value $TabControl -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name RulesTab -Value $RulesTab -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name comboBox6 -Value $comboBox6 -MemberType NoteProperty
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
Add-Member -InputObject $MainForm -Name comboBox5 -Value $comboBox5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label9 -Value $label9 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name Btn_RevertRule -Value $Btn_RevertRule -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label8 -Value $label8 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label5 -Value $label5 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name comboBox4 -Value $comboBox4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label7 -Value $label7 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label6 -Value $label6 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name comboBox3 -Value $comboBox3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_ResponseGroupQueues -Value $cbx_ResponseGroupQueues -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name comboBox2 -Value $comboBox2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_groups -Value $cbx_groups -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name btn_RuleSave -Value $btn_RuleSave -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name comboBox1 -Value $comboBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name cbx_Location -Value $cbx_Location -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name tabPage2 -Value $tabPage2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $MainForm -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent
