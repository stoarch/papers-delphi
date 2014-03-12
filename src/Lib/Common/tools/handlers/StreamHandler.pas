unit StreamHandler;

interface
  uses
    classes,
    interface_IProgressDisplayer;

type
  StreamHandler = class
    public
      class procedure setProgressDisplayer( displayer : IProgressDisplayer );
      class procedure copy_stream( fromStream, toStream : tStream );
  end;//class

implementation

var
  g_progress_displayer : IProgressDisplayer;

procedure next_task( caption : string; curr, total : integer );
begin
  if( g_progress_displayer = nil )then
    exit;

  g_progress_displayer.setTaskCaption( caption );
  g_progress_displayer.setTaskProgress( curr, total );
end;//proc

procedure next_subtask( caption : string; curr, total : integer );
begin
  if( g_progress_displayer = nil )then
    exit;

  g_progress_displayer.setSubTaskCaption( caption );
  g_progress_displayer.setSubTaskProgress( curr, total );
end;//proc
  
class procedure StreamHandler.copy_stream( fromStream, toStream : tstream );
  const
    CHUNK_SIZE = 10*1024;

  var
    pos   : integer;
    count : integer;
    last_copy_size : integer;
begin
  count := fromStream.Size div CHUNK_SIZE;
  last_copy_size := fromStream.Size - CHUNK_SIZE*count;

  pos := 0;
  while( pos < count )do
  begin
    next_subtask( 'Копирование...', pos, count );
    toStream.CopyFrom( fromStream, CHUNK_SIZE );

    inc( pos );
  end;//while

  next_subtask( 'Копирую рабочее место...', pos, count );
  toStream.CopyFrom( fromStream, last_copy_size );
end;


initialization
  g_progress_displayer := nil;

finalization
  g_progress_displayer := nil;
end.
