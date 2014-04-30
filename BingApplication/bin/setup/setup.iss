; �ű��� Inno Setup �ű��� ���ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ���ϸ���ϣ�

#define MyAppName "Bing��ֽ��ȡ����"
#define MyAppVerName "Bing��ֽ��ȡ���� 0.0.3"
#define MyAppPublisher "��˧"
#define MyAppURL "http://www.wincn.net/"
#define MyAppExeName "BingApplication.exe"

[Setup]
; ע��: AppId ��ֵ��Ψһʶ���������ı�־��
; ��Ҫ������������ʹ����ͬ�� AppId ֵ��
; (�ڱ������е���˵������� -> ���� GUID�����Բ���һ���µ� GUID)
AppId={{02FCCCDA-83E6-4152-AA38-C82E6B25DE52}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
InfoBeforeFile=F:\Documents\Visual Studio 2013\Projects\BingApplication\BingApplication\bin\setup\before.txt
OutputDir=F:\Documents\Visual Studio 2013\Projects\BingApplication\BingApplication\bin\setup
OutputBaseFilename=setup
SetupIconFile=F:\Documents\Visual Studio 2013\Projects\BingApplication\BingApplication\1140395.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\Documents\Visual Studio 2013\Projects\BingApplication\BingApplication\bin\Release\BingApplication.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\Documents\Visual Studio 2013\Projects\BingApplication\BingApplication\bin\Release\BingApplication.exe.Config"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι����ϵͳ�ļ�ʹ�� "Flags: ignoreversion" 

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#MyAppName}}"; Flags: nowait postinstall skipifsilent
