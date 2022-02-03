unit U_Backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, FileCtrl, Buttons, IBServices, pngimage;

type
  TFrm_Backup = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    pnl1: TPanel;
    btn1: TBitBtn;
    lbl4: TLabel;
    dirlst1: TDirectoryListBox;
    edtnome: TEdit;
    drvcbb1: TDriveComboBox;
    lbl5: TLabel;
    btn3: TBitBtn;
    pnl2: TPanel;
    mmo1: TMemo;
    dlgOpenarquivo: TOpenDialog;
    edtarquivo: TEdit;
    lbl2: TLabel;
    lbl3: TLabel;
    chkignore: TCheckBox;
    chkgarbage: TCheckBox;
    chklimbo: TCheckBox;
    chktransp: TCheckBox;
    btn2: TBitBtn;
    IBBackupService1: TIBBackupService;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Backup: TFrm_Backup;

implementation

{$R *.dfm}

procedure TFrm_Backup.btn1Click(Sender: TObject);
begin
   dlgOpenarquivo.InitialDir:=ExtractFilePath('c:\autoescola\banco\');
   if  dlgOpenarquivo.Execute then
    edtarquivo.Text:=dlgOpenarquivo.FileName;
end;

procedure TFrm_Backup.btn2Click(Sender: TObject);
begin
Close;
end;

procedure TFrm_Backup.btn3Click(Sender: TObject);
begin
   if edtarquivo.Text = '' then
   begin
     Application.MessageBox('Atenção, Digite o nome do arquivo para backup','Atenção.:',MB_APPLMODAL + MB_OK + MB_ICONWARNING);
     Exit;
   end;
      if edtnome.Text = '' then
   begin
     Application.MessageBox('Atenção, Nome do arquivo não foi informado','Atenção.:',MB_APPLMODAL + MB_OK + MB_ICONWARNING);
     Exit;
   end;

   try
     with  IBBackupService1 do
     begin

    ServerName:='local';
    LoginPrompt:=False;
    Params.Add('user_name=SYSDBA');
    Params.Add('password=masterkey');
    Active:=True;
    Verbose:=True;
    DatabaseName:=edtarquivo.Text;
    BackupFile.Add(dirlst1.Directory+'\'+edtnome.Text);

    Options:=[];
   if chkignore.Checked then
     Options:=Options +[IgnoreChecksums];
   if chklimbo.Checked then
     Options:=Options +[IgnoreLimbo];
   if chkgarbage.Checked then
     Options:=Options +[NoGarbageCollection];
   if chktransp.Checked then
     Options:=Options +[NonTransportable];
         ServiceStart;
         while not eof do
     mmo1.Lines.Add(GetNextLine);
       end;
         finally
          ShowMessage('Backup efetuado com sucesso');
         end;
         Application.ProcessMessages;

         end;


procedure TFrm_Backup.FormCreate(Sender: TObject);
begin
       dirlst1.Directory:=ExtractFilePath('c:\autoescola\backup\');
       //receber o nome e a data do sistema
       edtnome.Text:='Backup'+FormatDateTime('ddmmyy',date) +'.bak';
end;

end.
