unit interface_userData;

interface
  uses
     //--[ common ]--
     ExtCtrls,
     //--[ interfaces ]--
     interface_documentDirectionsList,
     interface_documentKindList,
     interface_userInfo
     ;

const
  IID_IUserData : TGUID = '{97685BC5-99B9-4E4C-8A9C-B18FC2DA3637}';

type
  IUserData = interface( IUserInfo )
              ['{97685BC5-99B9-4E4C-8A9C-B18FC2DA3637}']
      //--[ accessors ]--
        function get_nick() : string;
        function get_password() : string;
        function get_destination_list() : IDocumentDirectionsList;
        function get_image() : TImage;

      //--[ mutators ]--
        procedure set_nick( value : string );
        procedure set_password( value : string );
        procedure set_destination_list( value : IDocumentDirectionsList );
        procedure set_image( image : TImage );

      //--[ properties ]--
      property nick : string read get_nick write set_nick;
      property password : string read get_password write set_password;

      property destination_list : IDocumentDirectionsList read get_destination_list write set_destination_list;

      property sign_image : TImage read get_image write set_image;
  end;//interface

implementation

end.
