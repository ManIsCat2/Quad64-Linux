resgen src/Forms/EditWarp.resx src/Forms/EditWarp.resources
resgen src/Forms/MainForm.resx src/Forms/MainForm.resources
resgen Properties/Resources.resx Properties/Resources.resources
resgen src/Forms/MultiselectTree/MultiselectTreeView.resx src/Forms/MultiselectTree/MultiselectTreeView.resources
resgen src/Forms/RenameObjectCombo.resx src/Forms/RenameObjectCombo.resources
resgen src/Forms/ROMInfoForm.resx src/Forms/ROMInfoForm.resources
resgen src/Forms/ScriptDumps.resx src/Forms/ScriptDumps.resources
resgen src/Forms/SelectBehavior.resx src/Forms/SelectBehavior.resources
resgen src/Forms/SelectComboPreset.resx src/Forms/SelectComboPreset.resources
resgen src/Forms/SelectLevelForm.resx src/Forms/SelectLevelForm.resources
resgen src/Forms/SettingsForm.resx src/Forms/SettingsForm.resources
resgen src/Forms/TextureEditor.resx src/Forms/TextureEditor.resources
resgen src/Forms/ThemeSelector.resx src/Forms/ThemeSelector.resources

mcs -target:winexe -out:Quad64.exe \
    -r:System.dll -r:System.Data.dll -r:System.Drawing.dll \
    -r:System.Windows.Forms.dll -r:OpenTK.dll -r:OpenTK.GLControl.dll \
    -r:Newtonsoft.Json.dll \
    /resource:src/Forms/EditWarp.resources,Quad64.EditWarp.resources \
    /resource:src/Forms/MainForm.resources,Quad64.MainForm.resources \
    /resource:Properties/Resources.resources,Quad64.Properties.Resources \
    /resource:src/Forms/MultiselectTree/MultiselectTreeView.resources,Quad64.src.Forms.MultiselectTreeView.resources \
    /resource:src/Forms/RenameObjectCombo.resources,Quad64.RenameObjectCombo.resources \
    /resource:src/Forms/ROMInfoForm.resources,Quad64.ROMInfoForm.resources \
    /resource:src/Forms/ScriptDumps.resources,Quad64.src.Forms.ScriptDumps.resources \
    /resource:src/Forms/SelectBehavior.resources,Quad64.src.Forms.SelectBehavior.resources \
    /resource:src/Forms/SelectComboPreset.resources,Quad64.src.Forms.SelectComboPreset.resources \
    /resource:src/Forms/SelectLevelForm.resources,Quad64.SelectLevelForm.resources \
    /resource:src/Forms/SettingsForm.resources,Quad64.src.Forms.SettingsForm.resources \
    /resource:src/Forms/TextureEditor.resources,Quad64.src.Forms.TextureEditor.resources \
    /resource:src/Forms/ThemeSelector.resources,Quad64.src.Forms.ThemeSelector.resources \
    src/*.cs \
    Properties/*.cs \
    src/JSON/*.cs \
    src/MIO0/*.cs \
    src/COLLADA/*.cs \
    src/Forms/*.cs \
    src/Forms/MultiselectTree/*.cs \
    src/Forms/ScriptDumps_Tabs/*.cs \
    src/Forms/ScriptDumps_Tabs/Level/*.cs \
    src/Forms/ScriptDumps_Tabs/Objects/*.cs \
    src/Forms/TextureEditorComponents/*.cs \
    src/Forms/ToolStripRenderer/*.cs \
    src/LevelInfo/*.cs \
    src/Scripts/*.cs \
    src/TestROM/*.cs \
    src/Viewer/*.cs

wine Quad64.exe