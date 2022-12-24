; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=CodeLite
AppVerName=CodeLite
AppPublisher=Eran Ifrah
AppVersion=16.8.0
AppPublisherURL=http://codelite.org
AppSupportURL=http://codelite.org
AppUpdatesURL=http://codelite.org
DefaultDirName={pf64}\CodeLite
DefaultGroupName=CodeLite
LicenseFile=license.txt
OutputDir=output
OutputBaseFilename=codelite-amd64-16.8.0
ChangesEnvironment=yes
FlatComponentsList=yes
SetupIconFile=box_software.ico
Compression=lzma/ultra
SolidCompression=true
InternalCompressLevel=ultra
PrivilegesRequired=none
UninstallDisplayIcon={app}\codelite.exe,0

;;==================================
;; 64 bit setup
;;==================================
#define CODELITE_ROOT "C:\msys64\home\eran\devl\codelite"
#define WXWIN "C:\msys64\home\eran\root"
#define MSYS2_DIR "C:\msys64\usr\bin"
#define MINGW_DIR "C:\msys64\clang64\bin"
#define CLANG_DIR "C:\LLVM\bin"
#define BUILD_BIN_DIR "C:\msys64\home\eran\devl\codelite\build-release\bin"
#define WX_CONFIG_DIR "C:\msys64\home\eran\devl\wx-config-msys2\build-Release\bin"

[Languages]
Name: "eng"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "{#BUILD_BIN_DIR}\codelite.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BUILD_BIN_DIR}\codelite-echo.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BUILD_BIN_DIR}\ctagsd.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#CODELITE_ROOT}\universal-ctags\win32\codelite-ctags.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\codelite-make.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BUILD_BIN_DIR}\codelite-terminal.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#WX_CONFIG_DIR}\wx-config.exe"; DestDir: "{app}";
Source: "{#BUILD_BIN_DIR}\codelite_cppcheck.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\codelite-cc.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\codelite-exec.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\makedir.exe"; DestDir: "{app}"; Flags: ignoreversion ;

;; ---- wxWidgets DLLs
Source: "{#WXWIN}\lib\clang_x64_dll\wxmsw32u_clang.dll"; DestDir: "{app}"; Flags: ignoreversion;

;; ---- MinGW64 Dlls
Source: "{#MINGW_DIR}\libc++.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MINGW_DIR}\libunwind.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MINGW_DIR}\libwinpthread-1.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MINGW_DIR}\libsqlite3-0.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MINGW_DIR}\libssh.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MINGW_DIR}\zlib1.dll"; DestDir: "{app}\"; DestName: "zlib1.dll"; Flags: ignoreversion ;
Source: "{#MINGW_DIR}\libcrypto-1_1-x64.dll"; DestDir: "{app}\"; DestName: "libcrypto-1_1-x64.dll"; Flags: ignoreversion ;

;; ---- Binaries needed by CodeLite
Source: "{#CODELITE_ROOT}\InnoSetup\license.txt"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\config\codelite.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\codelite-remote"; DestDir: "{app}";
Source: "{#CODELITE_ROOT}\Runtime\rust-gdb.bat"; DestDir: "{app}";
Source: "{#CODELITE_ROOT}\Runtime\config\plugins.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\debuggers.xml.default"; DestDir: "{app}\config";
Source: "{#CODELITE_ROOT}\Runtime\config\build_settings.xml.default.win"; DestDir: "{app}\config"; DestName: "build_settings.xml.default";
Source: "{#CODELITE_ROOT}\Runtime\rc\*"; DestDir: "{app}\rc"; Flags: ignoreversion ;

Source: "{#CODELITE_ROOT}\Runtime\astyle.sample"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\php.sample"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\config\codelite.layout.default"; DestDir: "{app}\config"; DestName: codelite.layout; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\sdk\codelite_cppcheck\cfg\*.cfg"; DestDir: "{app}\config\cppcheck"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\templates\*"; DestDir: "{app}\templates"; Flags: recursesubdirs ;
Source: "{#CODELITE_ROOT}\SpellChecker\dics\*"; DestDir: "{app}\dics"; Flags: recursesubdirs ;

;; ------- Bin Utils ------------------
Source: "{#MSYS2_DIR}\rm.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\mkdir.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\cp.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\ls.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\mv.exe"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\msys-intl-8.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\msys-2.0.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#MSYS2_DIR}\msys-iconv-2.dll"; DestDir: "{app}"; Flags: ignoreversion;

; Copy clangd for Windows
Source: "{#CLANG_DIR}\clangd.exe"; DestDir: "{app}/lsp"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\msvcp140.dll"; DestDir: "{app}/lsp"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\vcruntime140.dll"; DestDir: "{app}/lsp"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\vcruntime140_1.dll"; DestDir: "{app}/lsp"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\clang-format.exe"; DestDir: "{app}/"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\msvcp140.dll"; DestDir: "{app}/"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\vcruntime140.dll"; DestDir: "{app}/"; Flags: ignoreversion;
Source: "{#CLANG_DIR}\vcruntime140_1.dll"; DestDir: "{app}/"; Flags: ignoreversion;

; Override with Windows specific files
Source: "{#CODELITE_ROOT}\Runtime\templates\projects\dynamic-library\dynamic-library.project.windows"; DestName: dynamic-library.project; DestDir: "{app}\templates\projects\dynamic-library"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\templates\projects\dynamic-library-wx-enabled\dynamic-library-wx-enabled.project.windows"; DestName: dynamic-library-wx-enabled.project; DestDir: "{app}\templates\projects\dynamic-library-wx-enabled"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\LICENSE"; DestDir: "{app}"; Flags: ignoreversion;

; XML settings
Source: "{#CODELITE_ROOT}\Runtime\lexers\*.json"; DestDir: "{app}\lexers\"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\DebuggerGDB.dll"; DestDir: "{app}\debuggers"; Flags: ignoreversion ;

; Copy the plugins (by name)
Source: "{#BUILD_BIN_DIR}\abbreviation.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\CodeFormatter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\ContinuousBuild.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\Copyright.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\CppChecker.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\Cscope.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\ExternalTools.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\git.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\Wizards.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\Outline.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\snipwiz.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\QMakePlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\Subversion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\UnitTestsPP.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\wxFormBuilder.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\ZoomNavigator.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\SFTP.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\CMakePlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\CodeLiteDiff.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\DebugAdapterClient.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\wxcrafter.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\WordCompletion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\SpellCheck.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\codelitephp.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\WebTools.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\HelpPlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\AutoSave.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\Tail.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\EditorConfigPlugin.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\codelite_vim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\PHPLint.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\PHPRefactoring.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\SmartCompletion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\Docker.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\LanguageServer.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\EOSWiki.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\Rust.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion
Source: "{#BUILD_BIN_DIR}\Remoty.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion

Source: "{#BUILD_BIN_DIR}\libwxsqlite3.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\codelite.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\libdapcxx.dll"; DestDir: "{app}"; Flags: ignoreversion;
Source: "{#BUILD_BIN_DIR}\libplugin.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\libdatabaselayersqlite.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#BUILD_BIN_DIR}\libwxshapeframework.dll"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\plugins\resources\*"; DestDir: "{app}\plugins\resources\"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\patch.exe"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\*.html"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\images\*"; DestDir: "{app}\images"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\art\splashscreen@2x.png"; DestDir: "{app}\images\"; Flags: ignoreversion; DestName: splashscreen@2x.png;
Source: "{#CODELITE_ROOT}\art\splashscreen@2x.png"; DestDir: "{app}\images\"; Flags: ignoreversion; DestName: splashscreen.png;
Source: "{#CODELITE_ROOT}\Runtime\*.zip"; DestDir: "{app}"; Flags: ignoreversion ;
Source: "{#CODELITE_ROOT}\Runtime\locale\*"; DestDir: "{app}\locale"; Flags: recursesubdirs ;
Source: "{#CODELITE_ROOT}\Runtime\gdb_printers\*"; DestDir: "{app}\gdb_printers"; Flags: recursesubdirs ;
Source: "{#CODELITE_ROOT}\wxcrafter\wxgui.zip";  DestDir: "{app}"; Flags: ignoreversion;
Source: "{#CODELITE_ROOT}\Runtime\PHP.zip";  DestDir: "{app}"; Flags: ignoreversion;
Source: "{#CODELITE_ROOT}\PHPRefactoring\phprefactor.phar";  DestDir: "{app}"; Flags: ignoreversion;

[Icons]
Name: "{group}\CodeLite "; Filename: "{app}\codelite.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:UninstallProgram, CodeLite}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\CodeLite "; Filename: "{app}\codelite.exe"; WorkingDir: "{app}" ;Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\CodeLite"; WorkingDir: "{app}"; Filename: "{app}\codelite.exe"; Tasks: quicklaunchicon

[INI]

[Registry]
Root: HKLM; Subkey: "Software\codelite\settings"; ValueType: string; ValueName: "InstallPath"; ValueData: "{app}"; Flags: noerror
Root: HKLM; Subkey: "Software\codelite\settings"; ValueType: string; ValueName: "PluginsDir";  ValueData: "{app}\plugins"; Flags: noerror

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[Run]
Filename: "{app}\codelite.exe"; Description: "Launch CodeLite"; Flags: postinstall nowait skipifsilent

[Code]
var
    // Globals
    sMinGWFolderName: String;
    bMinGWBackedUp: Boolean;

// Uninstall
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  case CurUninstallStep of
    usUninstall:
      begin
        RegDeleteKeyIncludingSubkeys(HKCR, '*\shell\Open With CodeLite');
        // Prompt the user to delete all his settings, default to "No"
        if MsgBox('Would you like to keep your user settings?', mbConfirmation, MB_YESNO or MB_DEFBUTTON1) = IDNO
        then begin
            DelTree(ExpandConstant('{userappdata}') + '\codelite', True, True, True);
        end;
      end;
    usPostUninstall:
      begin
      end;
  end;
end;

//--------------------
// Uninstall
//--------------------

function GetUninstallString(): String;
var
  sUnInstPath: String;
  sUnInstallString: String;
begin
  sUnInstPath := 'Software\Microsoft\Windows\CurrentVersion\Uninstall\CodeLite_is1';
  sUnInstallString := '';
  if not RegQueryStringValue(HKLM, sUnInstPath, 'UninstallString', sUnInstallString) then
    RegQueryStringValue(HKCU, sUnInstPath, 'UninstallString', sUnInstallString);
  Result := sUnInstallString;
end;

function UnInstallOldVersion(): Integer;
var
    sUnInstallString: String;
    sUnInstallStringOld: String;
    iResultCode: Integer;

begin
    // Return Values:
    // 1 - uninstall string is empty
    // 2 - error executing the UnInstallString
    // 3 - successfully executed the UnInstallString

    // default return value
    Result := 0;

    sUnInstallString    := GetUninstallString();
    if sUnInstallString <> '' then begin
        sUnInstallString := RemoveQuotes(sUnInstallString);
    if Exec(sUnInstallString, '/SILENT /NORESTART /SUPPRESSMSGBOXES ','', SW_HIDE, ewWaitUntilTerminated, iResultCode) then
        Result := 3
    else
        Result := 2;
    end else
        Result := 1;
end;

function GetCodeLiteInstallPath(): String;
var
    sRegKey: String;
    sCodeLitePath: String;
begin
    sRegKey := 'Software\codelite\settings';
    sCodeLitePath := '';
    if not RegQueryStringValue(HKLM, sRegKey, 'InstallPath', sCodeLitePath) then
        RegQueryStringValue(HKCU, sRegKey, 'InstallPath', sCodeLitePath);
    Result := sCodeLitePath;
end;

function UnInstallVersion6(): Integer;
var
    sCodeLitePath: String;

begin
    if GetCodeLiteInstallPath() <> '' then
    BEGIN
        // Uninstall codelite 6.X
        sCodeLitePath := GetCodeLiteInstallPath()

        // Delete the following folders:
        DelTree(sCodeLitePath + '\plugins', True, True, True )
        DelTree(sCodeLitePath + '\lexers', True, True, True)
        DelTree(sCodeLitePath + '\debuggers', True, True, True)
        DelTree(sCodeLitePath + '\templates', True, True, True)
        DelTree(sCodeLitePath + '\gdb_printers', True, True, True)
        DelTree(sCodeLitePath + '\config', True, True, True)
        DelTree(sCodeLitePath + '\dics', True, True, True)
        DelTree(sCodeLitePath + '\locale', True, True, True)

        // Clear the content of CodeLite installation folder (*.exe, *.zip, *.dll)
        DelTree(sCodeLitePath + '\*.exe', False, True, False)
        DelTree(sCodeLitePath + '\*.zip', False, True, False)
        DelTree(sCodeLitePath + '\*.dll', False, True, False)
        DelTree(sCodeLitePath + '\*.RPT', False, True, False)
        DelTree(sCodeLitePath + '\*.ini', False, True, False)
        DelTree(sCodeLitePath + '\*.html', False, True, False)
        DelTree(sCodeLitePath + '\*.dat', False, True, False)

        if MsgBox('Would you like to keep your local settings?', mbConfirmation, MB_YESNO or MB_DEFBUTTON1) = IDNO
        then
        BEGIN
            DelTree(ExpandConstant('{userappdata}') + '\codelite', True, True, True)
        END
    END
end;

function IsUpgrade(): Boolean;
begin
  Result := (GetUninstallString() <> '');
end;

function GetMinGWInstallLocation(): String;
var
    sMinGWPath: String;
    sMinGWPathLocation: String;
begin
    sMinGWPath := 'Software\codelite\settings';
    sMinGWPathLocation := '';
    if not RegQueryStringValue(HKLM, sMinGWPath, 'MinGW', sMinGWPathLocation) then
        RegQueryStringValue(HKCU, sMinGWPath, 'MinGW', sMinGWPathLocation);
    Result := sMinGWPathLocation;
end;

//-------------------------------------------------------
// Backup MinGW installation before uninstalling CodeLite
//-------------------------------------------------------
//procedure BackupMinGW();
//var
//    sMinGWLocation: String;
//    sTempFolder: String;
//    sMinGWBackupPath: String;
//    sMinGWDrive: String;
//
//begin
//    bMinGWBackedUp := False;
//    sMinGWLocation := GetMinGWInstallLocation();
//    if sMinGWLocation <> '' then
//    begin
//        sMinGWFolderName := ExtractFileName(sMinGWLocation);
//        sMinGWDrive := ExtractFileDrive(sMinGWLocation);
//        sMinGWBackupPath := sMinGWDrive + '\' + sMinGWFolderName + '.backup'; // Rename the folder so it won't get deleted
//        bMinGWBackedUp := RenameFile(sMinGWLocation, sMinGWBackupPath);
//    end;
//end;

//----------------------------------------------------
// Restore MinGW from a previously back up
//----------------------------------------------------
//procedure RestoreMinGW();
//var
//    sMinGWLocation: String;
//    sTempFolder: String;
//    sMinGWBackupPath: String;
//    sMinGWNewLocation: String;
//begin
//    sMinGWLocation := GetMinGWInstallLocation();
//    sMinGWNewLocation := sMinGWLocation; // By default restore to the old location
//    if (sMinGWLocation <> '') AND (bMinGWBackedUp = True) then
//    BEGIN
//        sMinGWBackupPath := GetEnv('TEMP') + '\' + sMinGWFolderName;
//        if not CreateDir(sMinGWNewLocation) then
//        BEGIN
//            // Could not create the restore location, prompt the user
//            sMinGWNewLocation := ''
//            if BrowseForFolder('Could not restore MinGW to its previous location' + #13#10 + 'Please select a new location to restore MinGW (Setup will restore it into a separate folder):', sMinGWNewLocation, False) = True then
//            BEGIN
//                sMinGWNewLocation := sMinGWNewLocation + sMinGWFolderName;
//            END
//        END else BEGIN
//            // We can safely restore the folder
//            RemoveDir(sMinGWNewLocation)
//        END
//    END
//
//	if sMinGWNewLocation <> '' then
//    BEGIN
//        RenameFile(sMinGWBackupPath, sMinGWNewLocation)
//    END
//end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
    case CurStep of
    ssInstall:
        begin
          if (IsUpgrade()) then
            begin
                // Uninstall CodeLite
                UnInstallVersion6()
            end;
        end;
    end;
end;
