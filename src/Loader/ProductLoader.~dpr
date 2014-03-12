program ProductLoader;

uses
  classes,
  strUtils,
  math,
  Dialogs,
  Forms,
  IniFiles,
  SysUtils,
  Windows,
  ShellApi,
  Logo_Form in '..\Lib\Task\UI\Logo_Form.pas' {LogoForm},
  interface_IProgressDisplayer in '..\Lib\Common\interface\interface_IProgressDisplayer.pas',
  interface_taskStatus in '..\Lib\Task\interfaces\interface_taskStatus.pas';

{$R *.res}
  const
    SOURCE_SECTION                = 'source';
    DESTINATION_SECTION           = 'destination';
    VERSION_SECTION               = 'version file';
    LAUNCH_SECTION                = 'launch file';

    FILE_NAME                     = 'file name';
    PARAMS                        = 'params';
    DIRECTORY                     = 'directory';
    NAME                          = 'name';

    NOT_FOUND                     = 'not found';

  type
    TVersion = record
      major, minor, update : word;
    end;

  var
    ini : TMemIniFile;


  procedure CopyFileList( source_list : TstringList;
                          dest_dir    : string
                        );

    var
      Fo : TSHFileOpStruct;
      buffer : array [0..4096] of char;
      p : pchar;
      i : integer;
   begin
      FillChar(Buffer, sizeof(Buffer), #0);
      p := @buffer;

      for i := 0 to source_list.count - 1 do
        p := StrECopy( p, pChar( source_list[ i ] ) ) + 1;

      FillChar(Fo, sizeof(Fo), #0);
      Fo.Wnd := HWND_DESKTOP;
      Fo.wFunc := FO_COPY;
      Fo.pFrom := @Buffer;
      Fo.pTo := pChar( dest_dir );   
      Fo.fFlags := FOF_NOCONFIRMATION + FOF_NOCONFIRMMKDIR +
                     FOF_SIMPLEPROGRESS;
      if ((SHFileOperation(Fo) <> 0) or (Fo.fAnyOperationsAborted <> false)) then
      begin
        ShowMessage('Обновление отменено!');
        halt(3);
      end;//if
   end;//proc


  procedure load_product();
    var
      sr  : TSearchRec;
      src_file_name                              : string;
      src_directory,dst_directory                : string;
      files                                      : TStringList;
  begin
    try
      src_file_name := ini.ReadString( SOURCE_SECTION, FILE_NAME, NOT_FOUND );
      src_directory := ini.ReadString( SOURCE_SECTION, DIRECTORY, NOT_FOUND );

      dst_directory := ini.ReadString( DESTINATION_SECTION, DIRECTORY, NOT_FOUND );

      if( not DirectoryExists( dst_directory ) )then
        ForceDirectories( dst_directory );


      if( FindFirst( src_directory + '\' + src_file_name, faAnyFile, sr ) <> 0 )then
      begin
        ShowMessage( 'Не могу найти файлы для копии.' );
        Halt(3);
      end;//if

      files := TStringList.Create();
      repeat
        if( sr.Name = '.' )or( sr.Name = '..' )then continue;

{        if( not CopyFile( pchar( src_directory + '\' + sr.Name ), pchar( dst_directory + '\' + sr.Name ), FALSE ) )then
          raise Exception.Create( SysErrorMessage( GetLastError() ) );
}
         files.add( src_directory + '\' + sr.Name );
      until( FindNext( sr ) <> 0 );

      CopyFileList( files, dst_directory );
    finally
      SysUtils.FindClose( sr );
    end;//try--finally
  end;//proc

  function read_version( file_name : string ) : TVersion;
    var
      ver_str : string;
      file_stm : TFileStream;
      str_stm  : TStringStream;
      cur_pos  : integer;
      new_pos  : integer;
  begin
    result.major  := 0;
    result.minor  := 0;
    result.update := 0;

    try
      file_stm := TFileStream.Create( file_name, fmOpenRead + fmShareDenyNone );
    except
      //ShowMessage( 'Файл ' + file_name + ' не найден!' );
      //::nothing to do - if file not exists - version is default 0.0.0!
      exit;
    end;//try-except--

    str_stm  := TStringStream.Create('');
    try
      str_stm.copyFrom( file_stm, file_stm.size );
      ver_str := copy( str_stm.DataString, 1, str_stm.size - 2 );
    finally
      FreeAndNil( str_stm );
      FreeAndNil( file_stm );
    end;//try--finally

    cur_pos := 0;
    new_pos := posex( '.', ver_str, cur_pos );

    result.major := StrToInt( copy( ver_str, cur_pos, new_pos - cur_pos - 1 ) );

    cur_pos := new_pos + 1;
    new_pos := posex( '.', ver_str, cur_pos );

    result.minor := StrToInt( copy( ver_str, cur_pos, new_pos - cur_pos ) );

    cur_pos := new_pos + 1;
    new_pos := max( posex( '.', ver_str, cur_pos ), length( ver_str ) );

    result.update := StrToInt( copy( ver_str, cur_pos, new_pos - cur_pos + 1 ) );
  end;//func

  function is_old_version() : boolean;
     var
       src_directory, dst_directory : string;
       version_file                 : string;
       cur_version, update_version  : TVersion;
   begin
      result := false;

      src_directory := ini.ReadString( SOURCE_SECTION, DIRECTORY, NOT_FOUND );
      dst_directory := ini.ReadString( DESTINATION_SECTION, DIRECTORY, NOT_FOUND );

      version_file  := ini.ReadString( VERSION_SECTION, NAME, NOT_FOUND );

      cur_version    := read_version( dst_directory + '\' + version_file );
      update_version := read_version( src_directory + '\' + version_file );

      if ( cur_version.major < update_version.major ) or
         ( cur_version.minor < update_version.minor ) or
         ( cur_version.update< update_version.update )
      then
        result := true;
   end;//function

  procedure launch_product();
    var
      launch_file_name : string;
      dst_directory    : string;
  begin
    launch_file_name := ini.ReadString( LAUNCH_SECTION, NAME, NOT_FOUND );
    dst_directory := ini.ReadString( DESTINATION_SECTION, DIRECTORY, NOT_FOUND );

    ShellExecute( 0,
                  'open',
                  pChar( dst_directory + '\' + launch_file_name ),
                  '',
                  pChar( dst_directory ),
                  SW_SHOWNORMAL
                );
  end;//proc
begin
  Application.Initialize;
  ini := TMemIniFile.Create( 'loader.ini' );

  LogoForm := TLogoForm.Create(application);
  logoForm.show();
  logoForm.Update();

  try
    try
      if is_old_version() then
      begin
        logoForm.setTaskName(
           'Обновляю программу. Подождите пожалуйста...'
        );
        
        load_product();
      end;

      launch_product();
    finally
      FreeAndNil( logoForm );
      FreeAndNil( ini );
    end;//try--finally
  except
    on e:exception do
      ShowMessage( 'Пожалуйста обратитесь к администратору!' + #10#13 + e.message );
  end;//try--finally
end.
