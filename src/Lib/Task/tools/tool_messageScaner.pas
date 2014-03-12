unit tool_messageScaner;

interface
  uses
      //--[ common ]--
      classes, sysUtils,
      //--[ interfaces ]--
      interface_message,
      interface_messageClient,
      interface_messageReceiver,
      interface_messageScaner,
      //--[ threads ]--
      thread_sql_messageScan,
      //--[ tools ]--
      tool_GlobalLog
      ;

  type
    //$$[ TMessageScaner ]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    // kind: class
    // goal: provide the scaning of messages asyncronously.
    // method: uses threads for this goal
    // protocol:
    //  1. initialization
    //    1. make an instance
    //    2. set the message client - who want to receive events
    //       of new messages arrival
    //    3. set the message receiver - who will check for new
    //       messages
    //    4. start the scaner   
    TMessageScaner = class( TInterfacedObject, IMessageScaner )
    private
      m_scan_thread    : TsqlMessageScanThread;
    public
      constructor Create();
      destructor Destroy();override;

      //--[ IMessageScaner ]--

      procedure setMessageClient( client : IMessageClient );
      procedure setMessageReceiver( receiver : IMessageReceiver );

      procedure start();
      procedure stop();
    end;//class

implementation

{ TMessageScaner }

constructor TMessageScaner.Create;
  const
    SUSPENDED = true;
begin
  inherited;

  m_scan_thread := TsqlMessageScanThread.Create( SUSPENDED );
end;

destructor TMessageScaner.Destroy;
begin
  try
    if( assigned( m_scan_thread ))then
    begin
      FreeAndNil( m_scan_thread );
    end;//if
  except
    on e:exception do
      raise Exception.Create( 'TMessageScaner.Destroy->' + e.message );
  end;//try--except

  m_scan_thread := nil;

  inherited;
end;


procedure TMessageScaner.setMessageClient(client: IMessageClient);
begin
  if( m_scan_thread = nil )then exit;

  m_scan_thread.setMessageClient( client );
end;

procedure TMessageScaner.setMessageReceiver(receiver: IMessageReceiver);
begin
  if( m_scan_thread = nil )then exit;

  m_scan_thread.setMessageReceiver( receiver );
end;

procedure TMessageScaner.start;
begin
  if( m_scan_thread = nil )then exit;

  m_scan_thread.resume();
end;

procedure TMessageScaner.stop;
begin
  if( m_scan_thread = nil )then exit;

  m_scan_thread.suspend();
end;

end.
