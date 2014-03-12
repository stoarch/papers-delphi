unit type_Message;

interface
   type
     TMessageState = (
                       MSG_STATE_UNREAD,
                       MSG_STATE_READEN,
                       MSG_STATE_DELETED
                     );

     TMessageKind = (
                      MSG_KIND_SIMPLE,
                      MSG_KIND_DOCUMENT
                    );  
implementation

end.
 