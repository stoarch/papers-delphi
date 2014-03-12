unit interface_messageInformationDisplayer;

interface
  uses
      //--[ common ]--
      classes, variants
      //--[ interfaces ]--
      ;

  const
    IID_IMessageInformationDisplayer : TGUID = '{7A29925F-9BAB-4872-A86B-407080397EF9}';

  type
    IMessageInformationDisplayer = interface( IInterface )
                                   ['{7A29925F-9BAB-4872-A86B-407080397EF9}']
      //todo:for which reason this interface is alive?
    end;//interface

implementation

end.
 