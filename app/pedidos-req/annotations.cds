using PedidosService as service from '../../srv/servicido';
annotate service.Pedidos with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'descripcion',
                Value : descripcion,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fechaEntrega',
                Value : fechaEntrega,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Posiciones',
            ID : 'Posiciones',
            Target : 'posiciones/@UI.LineItem#Posiciones',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'descripcion',
            Value : descripcion,
        },
        {
            $Type : 'UI.DataField',
            Label : 'fechaEntrega',
            Value : fechaEntrega,
        },
    ],
);

annotate service.Posiciones with @(
    UI.LineItem #Posiciones : [
    ]
);

