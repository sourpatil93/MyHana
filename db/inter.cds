namespace app.inter;

using { Country } from '@sap/cds/common';
type BusinessKey : String(10);
type SDate : DateTime;
type LText : String(1024);

entity Inter_Header {
    Key ID : Integer;
        Items : Composition of many Inter_Items on Items.IntHeader = $self;
        Partner : BusinessKey;
        Log_Date : String;
        BPCountry : Country;
};

entity Inter_Items {
    Key IntHeader : Association to Inter_Header;
    Key Text_ID : BusinessKey;
        Langu : String(2);
        LogText : LText;
};
