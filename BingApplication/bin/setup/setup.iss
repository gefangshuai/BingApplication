; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ÿ��Bing��ֽ"
#define MyAppVersion "0.2.4"
#define MyAppPublisher "��˧"
#define MyAppURL "http://www.wincn.net/"
#define MyAppExeName "BingApplication.exe"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{12892ADF-0D7B-4117-B148-9AB8F20D9023}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
LicenseFile=F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\setup\License.rtf
InfoBeforeFile=F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\setup\Readme.rtf
OutputDir=F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\setup
OutputBaseFilename=setup
SetupIconFile=F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\app.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\Release\BingApplication.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\Release\app.ico"; DestDir: "{app}"; Flags: ignoreversion
; Source: "F:\Documents\Visual Studio 2013\Projects\product\BingApplication\BingApplication\bin\Release\AutoUpdate.exe"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userdesktop}\ÿ��Bing��ֽ";Filename: "{app}\BingApplication.exe"; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

