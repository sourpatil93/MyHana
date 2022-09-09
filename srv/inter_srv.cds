using app.inter from '../db/inter';
service CatalogService {
    entity Inter_Header as projection on inter.Inter_Header;

    entity Inter_Items as projection on inter.Inter_Items;
}
@odata.draft.enabled
annotate CatalogService.Inter_Header with @(UI : {
    CreateHidden     : false,
    DeleteHidden     : false,
    UpdateHidden     : false,
    HeaderInfo       : {
        TypeName       : 'ID',
        TypeNamePlural : 'ID',
        Title          : {Value : ID},
        Description    : {Value : 'ID'}
    },
    SelectionFields  : [
        ID,
        Items,
        Partner,
        Log_Date,
        BPCountry
    ],
    LineItem         : [
        {Value : ID},
        {Value : Items},
        {Value : Partner},
        {Value : Log_Date},
        {Value : BPCountry}
    ],
    Facets           : [{
        $Type  : 'UI.CollectionFacet',
        Label  : 'Intyeraction Header',
        Facets : [{
            $Type  : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Main',
            Label  : ''
        }]
    }],
    FieldGroup #Main : {Data : [
        {Value : ID},
        {Value : Items},
        {Value : Partner},
        {Value : Log_Date},
        {Value : BPCountry}
    ]}
});